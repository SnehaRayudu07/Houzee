import 'controller/cooks_main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/main_home_page_container_page/main_home_page_container_page.dart';
import 'package:houzee/widgets/app_bar/appbar_title.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_bottom_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class CooksMainPageScreen extends GetWidget<CooksMainPageController> {
  const CooksMainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(bottom: 70.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.lightGreenA70033,
                      appTheme.greenA70033
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildRestaurantNameSection(),
                      _buildCooksMainPageSection()
                    ]))),
            bottomNavigationBar: _buildBottomBarSection()));
  }

  /// Section Widget
  Widget _buildRestaurantNameSection() {
    return Container(
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 38.v),
          CustomAppBar(
              height: 31.v,
              title: AppbarTitle(
                  text: "lbl_restaurant_name".tr,
                  margin: EdgeInsets.only(left: 65.h))),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 65.h),
              child: Text("lbl_location".tr,
                  style: CustomTextStyles.titleLargePrimaryContainer)),
          SizedBox(height: 59.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 139.h, vertical: 14.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL26),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70.v),
                    Text("lbl_your_menu".tr,
                        style: CustomTextStyles.titleLargeExtraLight)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUpdateSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHowToPrepare,
                      height: 147.v,
                      width: 150.h),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text("lbl_fried_rice".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary)),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      height: 25.v,
                      width: 79.h,
                      text: "lbl_update".tr,
                      margin: EdgeInsets.only(left: 25.h),
                      buttonStyle: CustomButtonStyles.outlineBlackTL6,
                      buttonTextStyle: CustomTextStyles.bodySmallAladin)
                ]),
                Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 175.v,
                              width: 171.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgBakedJollofRice,
                                        height: 175.v,
                                        width: 171.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 42.h, bottom: 9.v),
                                            child: Text("lbl_jollof_rice".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeOnPrimary)))
                                  ])),
                          SizedBox(height: 10.v),
                          CustomElevatedButton(
                              height: 25.v,
                              width: 79.h,
                              text: "lbl_update".tr,
                              margin: EdgeInsets.only(left: 42.h),
                              buttonStyle: CustomButtonStyles.outlineBlackTL6,
                              buttonTextStyle: CustomTextStyles.bodySmallAladin)
                        ]))
              ]),
              SizedBox(height: 17.v),
              Divider(
                  color: appTheme.blueGray100D8, indent: 5.h, endIndent: 29.h)
            ]));
  }

  /// Section Widget
  Widget _buildCooksMainPageSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      SizedBox(
          height: 458.v,
          width: 351.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 29.v,
                width: 17.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 1.h),
                onTap: () {
                  onTapImgArrowLeft();
                }),
            _buildUpdateSection()
          ])),
      SizedBox(height: 67.v),
      CustomImageView(
          imagePath: ImageConstant.imgPlus,
          height: 14.adaptSize,
          width: 14.adaptSize,
          margin: EdgeInsets.only(right: 82.h)),
      SizedBox(height: 65.v),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(left: 48.h, right: 55.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 8.v),
                        child: Text("lbl_white_rice".tr,
                            style: CustomTextStyles.bodyLargeOnPrimary)),
                    Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text("lbl_add_item".tr,
                            style: CustomTextStyles.titleLargeExtraLight))
                  ]))),
      SizedBox(height: 5.v)
    ]);
  }

  /// Section Widget
  Widget _buildBottomBarSection() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group50:
        return AppRoutes.mainHomePageContainerPage;
      case BottomBarEnum.Group125:
        return "/";
      case BottomBarEnum.Group124:
        return "/";
      case BottomBarEnum.Group34:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainHomePageContainerPage:
        return MainHomePageContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
