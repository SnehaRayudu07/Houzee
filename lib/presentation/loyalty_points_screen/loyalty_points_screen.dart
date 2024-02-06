import 'controller/loyalty_points_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class LoyaltyPointsScreen extends GetWidget<LoyaltyPointsController> {
  const LoyaltyPointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
                        EdgeInsets.symmetric(horizontal: 29.h, vertical: 25.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_loyalty_points".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 14.v),
                      Divider(color: theme.colorScheme.onError),
                      SizedBox(height: 48.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, right: 19.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorPrimary168x112,
                                    height: 168.v,
                                    width: 112.h),
                                Container(
                                    width: 84.h,
                                    margin: EdgeInsets.only(
                                        left: 87.h, top: 43.v, bottom: 49.v),
                                    child: Text("lbl_sanita_queen".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineLarge))
                              ])),
                      SizedBox(height: 28.v),
                      Text("lbl_509_points".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 33.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 282.h,
                              margin: EdgeInsets.only(left: 28.h, right: 5.h),
                              child: Text("msg_convert_points_to".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyLargeBlack90001))),
                      SizedBox(height: 98.v),
                      CustomElevatedButton(
                          height: 52.v,
                          width: 108.h,
                          text: "lbl_convert".tr,
                          buttonTextStyle: theme.textTheme.bodyLarge!),
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

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
