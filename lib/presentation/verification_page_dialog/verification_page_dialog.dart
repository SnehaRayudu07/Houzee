import 'controller/verification_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class VerificationPageDialog extends StatelessWidget {
  VerificationPageDialog(this.controller, {Key? key}) : super(key: key);

  VerificationPageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 317.h,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: CustomIconButton(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCloseDeepOrange300))),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(right: 54.h),
                  child: Text("msg_verification_code".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Text("msg_a_verification_code".tr,
                      style: CustomTextStyles.bodySmallRobotoBluegray400e501)),
              SizedBox(height: 26.v),
              CustomOutlinedButton(
                  height: 50.v,
                  text: "msg_verification_code".tr,
                  margin: EdgeInsets.only(right: 1.h),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle: CustomTextStyles.bodyMediumBluegray400e501),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                  width: 178.h,
                  text: "lbl_reset_password".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  onPressed: () {
                    onTapResetPassword();
                  },
                  alignment: Alignment.center),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.center,
                  child: Text("lbl_change_email".tr,
                      style: CustomTextStyles.bodySmallRobotoDeeporange300
                          .copyWith(decoration: TextDecoration.underline))),
              SizedBox(height: 34.v)
            ]));
  }

  /// Navigates to the newPasswordPageScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.newPasswordPageScreen,
    );
  }
}
