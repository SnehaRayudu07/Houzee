import 'controller/sign_up_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoBottomsheet extends StatelessWidget {
  SignUpTwoBottomsheet(this.controller, {Key? key}) : super(key: key);

  SignUpTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 19.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL33),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector7, height: 5.v, width: 38.h),
          SizedBox(height: 16.v),
          Text("lbl_sign_up".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 27.v),
          _buildUserNameSection(),
          SizedBox(height: 36.v),
          _buildEmailSection(),
          SizedBox(height: 35.v),
          _buildPasswordSection(),
          SizedBox(height: 36.v),
          _buildConfirmPasswordSection(),
          SizedBox(height: 36.v),
          _buildNeverHungryAgainSection(),
          SizedBox(height: 20.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 86.h),
                  child: Text("lbl_or_sign_up_with".tr,
                      style: CustomTextStyles.bodyMediumAcmeGray500e5))),
          SizedBox(height: 21.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomIconButton(
                height: 34.adaptSize,
                width: 34.adaptSize,
                child: CustomImageView()),
            Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    child: CustomImageView()))
          ]),
          SizedBox(height: 47.v)
        ]));
  }

  /// Section Widget
  Widget _buildUserNameSection() {
    return CustomTextFormField(
        controller: controller.userNameSectionController,
        hintText: "lbl_user_name".tr,
        hintStyle: CustomTextStyles.bodyMediumAcmeBluegray400e5,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return CustomTextFormField(
        controller: controller.emailSectionController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return CustomTextFormField(
        controller: controller.passwordSectionController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection() {
    return CustomTextFormField(
        controller: controller.confirmPasswordSectionController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildNeverHungryAgainSection() {
    return CustomElevatedButton(
        height: 50.v,
        text: "msg_never_hungry_again".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.bodyLargeAcme,
        onPressed: () {
          onTapNeverHungryAgainSection();
        });
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapNeverHungryAgainSection() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
