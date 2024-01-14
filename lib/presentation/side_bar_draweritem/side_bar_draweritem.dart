import 'controller/side_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SideBarDraweritem extends StatelessWidget {
  SideBarDraweritem(this.controller, {Key? key}) : super(key: key);

  SideBarController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("lbl_sanita_queen2".tr,
                              style: CustomTextStyles.bodyLargeAladin)),
                      SizedBox(height: 37.v),
                      GestureDetector(
                          onTap: () {
                            onTapTwenty();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUser1,
                                    height: 22.v,
                                    width: 20.h,
                                    margin: EdgeInsets.only(bottom: 1.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 28.h, top: 3.v),
                                    child: Text("lbl_profile".tr,
                                        style:
                                            CustomTextStyles.bodyLargeAladin))
                              ]))),
                      SizedBox(height: 14.v),
                      SizedBox(width: 235.h, child: Divider()),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMenu,
                                height: 23.adaptSize,
                                width: 23.adaptSize),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtHome();
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.h, top: 3.v),
                                    child: Text("lbl_home".tr,
                                        style: theme.textTheme.bodyLarge)))
                          ])),
                      SizedBox(height: 20.v),
                      SizedBox(width: 235.h, child: Divider()),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMedal1,
                                height: 28.v,
                                width: 27.h),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtChef();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 5.v, bottom: 3.v),
                                    child: Text("lbl_chef".tr,
                                        style: theme.textTheme.bodyLarge)))
                          ])),
                      SizedBox(height: 22.v),
                      SizedBox(width: 235.h, child: Divider()),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCreditCard1,
                                height: 27.v,
                                width: 25.h),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 4.v, bottom: 3.v),
                                child: Text("lbl_payment_methods".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(height: 21.v),
                      SizedBox(width: 235.h, child: Divider()),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCreditCard2,
                                height: 27.v,
                                width: 25.h),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtSubscription();
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 25.h, top: 6.v),
                                    child: Text("lbl_subscription".tr,
                                        style: theme.textTheme.bodyLarge)))
                          ])),
                      SizedBox(height: 17.v),
                      SizedBox(width: 235.h, child: Divider()),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCreditCard3,
                                    height: 27.v,
                                    width: 25.h),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLoyaltyPoints();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 25.h, bottom: 6.v),
                                        child: Text("lbl_loyalty_points".tr,
                                            style: theme.textTheme.bodyLarge)))
                              ])),
                      SizedBox(height: 23.v)
                    ]))));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTwenty() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapTxtHome() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the cooksMainPageScreen when the action is triggered.
  onTapTxtChef() {
    Get.toNamed(
      AppRoutes.cooksMainPageScreen,
    );
  }

  /// Navigates to the mealPlansScreen when the action is triggered.
  onTapTxtSubscription() {
    Get.toNamed(
      AppRoutes.mealPlansScreen,
    );
  }

  /// Navigates to the loyaltyPointsScreen when the action is triggered.
  onTapTxtLoyaltyPoints() {
    Get.toNamed(
      AppRoutes.loyaltyPointsScreen,
    );
  }
}
