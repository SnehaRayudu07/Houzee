import 'controller/cart_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

class CartPageScreen extends GetWidget<CartPageController> {
  const CartPageScreen({Key? key}) : super(key: key);

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
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 25.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text("msg_your_shopping_cart".tr,
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.center,
                              child: Divider(
                                  color: theme.colorScheme.onError,
                                  indent: 17.h,
                                  endIndent: 17.h)),
                          SizedBox(height: 37.v),
                          Container(
                              height: 415.v,
                              width: 343.h,
                              margin: EdgeInsets.only(left: 8.h),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildCartPage(),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: 30.v,
                                            width: 340.h,
                                            decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        bottom: Radius.circular(
                                                            6.h)))))
                                  ])),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrow1,
                                    height: 1.v,
                                    width: 24.h,
                                    margin:
                                        EdgeInsets.only(top: 9.v, bottom: 7.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Text("msg_continue_shopping".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500))
                              ])),
                          SizedBox(height: 13.v),
                          CustomElevatedButton(
                              height: 52.v,
                              width: 108.h,
                              text: "lbl_checkout".tr,
                              buttonTextStyle: theme.textTheme.bodyLarge!,
                              onPressed: () {
                                onTapCheckout();
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 5.v)
                        ])))));
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
  Widget _buildCartPage() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 32.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 94.h),
                          child: Text("msg_spaghetti_rigatoni".tr,
                              style:
                                  CustomTextStyles.bodySmallRobotoBlack90001))),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.only(left: 104.h, right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 23.v,
                                width: 68.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 23.v,
                                              width: 24.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text("msg_1".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallRobotoBlack90001Regular)))
                                    ])),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: Text("lbl_20002".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoBlack90001)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIconmonstrXMark3,
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 13.h, top: 5.v, bottom: 12.v))
                          ])),
                  SizedBox(height: 79.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 96.h),
                          child: Text("lbl_peppered_stew".tr,
                              style:
                                  CustomTextStyles.bodySmallRobotoBlack90001))),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.only(left: 104.h, right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 23.v,
                                width: 68.h,
                                margin: EdgeInsets.only(top: 2.v),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 23.v,
                                              width: 24.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray40001))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("msg_5".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallRobotoBlack90001Regular)))
                                    ])),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10.v),
                                child: Text("lbl_5700".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoBlack90001)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconmonstrXMark3Red700,
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 13.h, top: 5.v, bottom: 14.v))
                          ])),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.center,
                      child: Divider(
                          color: theme.colorScheme.onError,
                          indent: 5.h,
                          endIndent: 12.h)),
                  SizedBox(height: 7.v),
                  Container(
                      width: 150.h,
                      margin: EdgeInsets.only(right: 4.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_purchase_total2".tr,
                                style: CustomTextStyles.bodyMedium15),
                            TextSpan(
                                text: "\n ".tr,
                                style: CustomTextStyles.bodyMediumfff69235),
                            TextSpan(
                                text:
                                    "                \n            \n \n\n".tr,
                                style: CustomTextStyles.bodyMedium15),
                            TextSpan(
                                text: "\n ".tr,
                                style: CustomTextStyles.bodyMediumffffffff)
                          ]),
                          textAlign: TextAlign.right)),
                  SizedBox(height: 18.v),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                        child: Text("lbl_voucher".tr,
                            style: CustomTextStyles.bodyMediumBlack9000115)),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: CustomTextFormField(
                            width: 75.h,
                            controller: controller.voucherPlaceholderController,
                            hintText: "lbl_enter_here".tr,
                            hintStyle: CustomTextStyles.bodyMediumGray40002,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 5.h, vertical: 6.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlinePrimaryTL2,
                            filled: true,
                            fillColor: theme.colorScheme.primaryContainer))
                  ]),
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_sub_total".tr,
                                style: CustomTextStyles.bodyMedium15),
                            TextSpan(
                                text: "msg_tax".tr,
                                style: CustomTextStyles
                                    .bodySmallRobotoff000000Thin)
                          ]),
                          textAlign: TextAlign.left))
                ])));
  }

  /// Navigates to the restaurantPageScreen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.restaurantPageScreen,
    );
  }

  /// Navigates to the checkoutPageScreen when the action is triggered.
  onTapCheckout() {
    Get.toNamed(
      AppRoutes.checkoutPageScreen,
    );
  }
}
