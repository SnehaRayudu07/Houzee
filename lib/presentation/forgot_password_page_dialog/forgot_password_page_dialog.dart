import 'controller/forgot_password_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';
import 'package:houzee/presentation/verification_page_dialog/verification_page_dialog.dart';
import 'package:houzee/presentation/verification_page_dialog/controller/verification_page_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordPageDialog extends StatelessWidget {
  ForgotPasswordPageDialog(this.controller, {Key? key}) : super(key: key);

  ForgotPasswordPageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 317.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 25.v),
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
              SizedBox(height: 7.v),
              Container(
                  width: 86.h,
                  margin: EdgeInsets.only(right: 82.h),
                  child: Text("msg_forgot_password".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 28.v),
              CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "msg_enter_your_account".tr,
                  hintStyle: CustomTextStyles.bodyMediumBluegray400e501,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL25,
                  filled: true,
                  fillColor: appTheme.blueGray50),
              SizedBox(height: 21.v),
              CustomElevatedButton(
                  width: 178.h,
                  text: "lbl_reset_password".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  onPressed: () {
                    onTapResetPassword();
                  },
                  alignment: Alignment.center),
              SizedBox(height: 51.v)
            ]));
  }

  /// Displays a dialog with the [VerificationPageDialog] content.
  onTapResetPassword() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: VerificationPageDialog(
        Get.put(
          VerificationPageController(),
        ),
      ),
    ));
  }
}
