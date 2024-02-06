import 'controller/checkout_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutPageScreen extends GetWidget<CheckoutPageController> {
  CheckoutPageScreen({Key? key}) : super(key: key);

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
                                horizontal: 16.h, vertical: 25.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_checkout_page".tr,
                                          style:
                                              theme.textTheme.headlineLarge))),
                              SizedBox(height: 14.v),
                              Divider(
                                  color: appTheme.blueGray100D8,
                                  indent: 13.h,
                                  endIndent: 13.h),
                              SizedBox(height: 6.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 65.v,
                                            width: 80.h,
                                            decoration: BoxDecoration()),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 60.h,
                                                top: 22.v,
                                                bottom: 27.v),
                                            child: Text(
                                                "msg_your_order_details".tr,
                                                style: CustomTextStyles
                                                    .bodySmallRobotoBlack90001Thin))
                                      ])),
                              SizedBox(height: 15.v),
                              _buildHouseNo(),
                              SizedBox(height: 3.v),
                              _buildPayNow(),
                              SizedBox(height: 18.v),
                              Divider(
                                  color: appTheme.blueGray5001,
                                  indent: 13.h,
                                  endIndent: 13.h),
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
  Widget _buildShippingDetails() {
    return CustomTextFormField(
        width: 149.h,
        controller: controller.shippingDetailsController,
        hintText: "lbl_house_no".tr,
        contentPadding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildShippingDetails1() {
    return CustomTextFormField(
        width: 148.h,
        controller: controller.shippingDetailsController1,
        hintText: "lbl_street_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildContactDetails() {
    return CustomTextFormField(
        width: 149.h,
        controller: controller.contactDetailsController,
        hintText: "lbl_city".tr,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildContactDetails1() {
    return CustomTextFormField(
        width: 148.h,
        controller: controller.contactDetailsController1,
        hintText: "lbl_phone".tr,
        hintStyle: CustomTextStyles.bodyMediumGray400,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildSpecialNotesForDelivery() {
    return CustomTextFormField(
        controller: controller.specialNotesForDeliveryController,
        hintText: "msg_special_notes_for".tr,
        textInputAction: TextInputAction.done,
        maxLines: 6,
        contentPadding: EdgeInsets.all(7.h),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        filled: true,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13.h),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 153.v,
              width: 317.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 69.h, top: 9.v, right: 66.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 24.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_product_name".tr,
                                            style:
                                                CustomTextStyles.labelLarge13),
                                        Text("lbl_total".tr,
                                            style:
                                                CustomTextStyles.labelLarge13)
                                      ])),
                              SizedBox(height: 13.v),
                              Row(children: [
                                Container(
                                    width: 96.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_pasta_fritata".tr,
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "lbl_x2".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumffc4c4c4),
                                          TextSpan(text: "            ".tr),
                                          TextSpan(
                                              text: "lbl_beef".tr,
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          TextSpan(
                                              text: "lbl_x4".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumffc3c2b8)
                                        ]),
                                        textAlign: TextAlign.center)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.h, top: 2.v),
                                    child: Column(children: [
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_5075".tr,
                                                style: CustomTextStyles
                                                    .bodySmallRobotoff000000),
                                            TextSpan(
                                                text: "lbl_inc_tax".tr,
                                                style: CustomTextStyles
                                                    .robotoff000000)
                                          ]),
                                          textAlign: TextAlign.left),
                                      SizedBox(height: 2.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_4532".tr,
                                                style: CustomTextStyles
                                                    .bodySmallRobotoff000000),
                                            TextSpan(
                                                text: "lbl_inc_tax".tr,
                                                style: CustomTextStyles
                                                    .robotoff000000)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                              ])
                            ]))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 57.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL8),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 8.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_9607".tr,
                                        style: CustomTextStyles
                                            .labelLargeffffffff),
                                    TextSpan(
                                        text: "lbl_inc_tax".tr,
                                        style: CustomTextStyles.robotoffffffff)
                                  ]),
                                  textAlign: TextAlign.left)
                            ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 127.h, bottom: 7.v),
                        child: Text("lbl_total".tr,
                            style: theme.textTheme.titleSmall))),
                Align(
                    alignment: Alignment.center,
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: appTheme.gray400.withOpacity(0.02),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: appTheme.black90001, width: 1.h),
                            borderRadius: BorderRadiusStyle.roundedBorder6),
                        child: Container(
                            height: 153.v,
                            width: 317.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 6.v),
                            decoration: AppDecoration.outlineBlack900011
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 28.v),
                                      child: SizedBox(
                                          width: 277.h,
                                          child: Divider(
                                              color: appTheme.indigo200)))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 113.h),
                                      child: SizedBox(
                                          height: 113.v,
                                          child: VerticalDivider(
                                              width: 1.h,
                                              thickness: 1.v,
                                              color: appTheme.indigo200))))
                            ]))))
              ])),
          SizedBox(height: 42.v),
          Text("msg_shipping_details".tr,
              style: CustomTextStyles.bodySmallRobotoBlack90001Thin),
          SizedBox(height: 12.v),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildShippingDetails(), _buildShippingDetails1()]),
          SizedBox(height: 9.v),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildContactDetails(), _buildContactDetails1()]),
          SizedBox(height: 6.v),
          _buildSpecialNotesForDelivery(),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildPayNow() {
    return CustomElevatedButton(
        height: 52.v,
        width: 108.h,
        text: "lbl_pay_now".tr,
        buttonTextStyle: CustomTextStyles.bodyLargeLight,
        onPressed: () {
          onTapPayNow();
        });
  }

  /// Navigates to the cartPageScreen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.cartPageScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapPayNow() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
