import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: SizedBox(
                        height: 808.v,
                        width: 374.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgWel51,
                              height: 808.v,
                              width: 374.h,
                              radius: BorderRadius.circular(13.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 73.h, top: 51.v, right: 73.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle129,
                                            height: 163.v,
                                            width: 223.h),
                                        SizedBox(height: 28.v),
                                        CustomElevatedButton(
                                            height: 47.v,
                                            text: "lbl_get_started".tr,
                                            rightIcon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 14.h),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1.h)),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgUser,
                                                    height: 21.v,
                                                    width: 20.h)),
                                            buttonStyle:
                                                CustomButtonStyles.fillPrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .headlineSmallBluegray100)
                                      ])))
                        ]))))));
  }
}
