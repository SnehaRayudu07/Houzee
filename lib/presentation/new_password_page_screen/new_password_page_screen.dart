import 'controller/new_password_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPasswordPageScreen extends GetWidget<NewPasswordPageController> {
  NewPasswordPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
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
                                horizontal: 47.h, vertical: 11.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle129,
                                  height: 163.v,
                                  width: 223.h),
                              Container(
                                  width: 203.h,
                                  margin:
                                      EdgeInsets.only(left: 40.h, right: 36.h),
                                  child: Text("msg_your_password_must".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargeBlack90001Light)),
                              SizedBox(height: 69.v),
                              CustomTextFormField(
                                  controller: controller.newpasswordController,
                                  hintText: "msg_enter_new_password".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyMediumBluegray400e501,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              SizedBox(height: 44.v),
                              CustomTextFormField(
                                  controller: controller.newpasswordController1,
                                  hintText: "msg_reconfirm_new_password".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyMediumBluegray400e501,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              Spacer(flex: 35),
                              CustomElevatedButton(
                                  text: "lbl_eat_away".tr,
                                  margin:
                                      EdgeInsets.only(left: 32.h, right: 33.h),
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL19,
                                  onPressed: () {
                                    onTapEatAway();
                                  }),
                              Spacer(flex: 64)
                            ])))))));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapEatAway() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
