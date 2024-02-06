import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.lightGreenA70033,
                      appTheme.greenA70033
                    ])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 22.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 15.h),
                                      child: Text("lbl_profile".tr,
                                          style:
                                              theme.textTheme.headlineLarge))),
                              SizedBox(height: 17.v),
                              Divider(
                                  color: appTheme.blueGray100D8,
                                  indent: 15.h,
                                  endIndent: 15.h),
                              SizedBox(height: 65.v),
                              _buildSubscriptionRow(),
                              SizedBox(height: 23.v),
                              _buildEmailRow(),
                              SizedBox(height: 21.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: _buildPaymentRow(
                                      paymentText: "lbl_address".tr,
                                      bankNameText: "msg_42_street_gate".tr)),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: _buildPaymentRow(
                                      paymentText: "lbl_payment".tr,
                                      bankNameText: "lbl_bank_name".tr)),
                              SizedBox(height: 43.v),
                              Divider(
                                  color: appTheme.blueGray5001,
                                  indent: 12.h,
                                  endIndent: 18.h),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCloseBlack90001,
            margin: EdgeInsets.fromLTRB(29.h, 18.v, 326.h, 18.v),
            onTap: () {
              onTapClose();
            }));
  }

  /// Section Widget
  Widget _buildSubscriptionRow() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 12.h, right: 26.h),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle77190x199,
                  height: 190.v,
                  width: 199.h),
              Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 42.v, bottom: 15.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            width: 78.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text("lbl_user_name".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineLarge))),
                    SizedBox(height: 13.v),
                    CustomElevatedButton(
                        height: 48.v,
                        width: 102.h,
                        text: "lbl_subscription".tr,
                        buttonTextStyle: CustomTextStyles.bodyLargeAladin,
                        onPressed: () {
                          onTapSubscription();
                        })
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildEmailRow() {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: CustomTextFormField(
                      controller: controller.emailController,
                      hintText: "lbl_email2".tr,
                      hintStyle: CustomTextStyles.bodyLargeGray400,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.h, vertical: 14.v))),
              CustomImageView(
                  imagePath: ImageConstant.imgEdit1,
                  height: 16.v,
                  width: 15.h,
                  margin: EdgeInsets.only(left: 7.h, top: 13.v, bottom: 18.v))
            ]));
  }

  /// Common widget
  Widget _buildPaymentRow({
    required String paymentText,
    required String bankNameText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(paymentText,
                                style: CustomTextStyles.bodyLargeGray400
                                    .copyWith(color: appTheme.gray400))),
                        Padding(
                            padding: EdgeInsets.only(right: 50.h, bottom: 2.v),
                            child: Text(bankNameText,
                                style: CustomTextStyles.bodyLargeBlack90001
                                    .copyWith(color: appTheme.black90001)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEdit1,
              height: 16.v,
              width: 15.h,
              margin: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 26.v))
        ]);
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the mealPlansScreen when the action is triggered.
  onTapSubscription() {
    Get.toNamed(
      AppRoutes.mealPlansScreen,
    );
  }
}
