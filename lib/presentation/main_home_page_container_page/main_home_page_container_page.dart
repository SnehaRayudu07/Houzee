import 'controller/main_home_page_container_controller.dart';
import 'models/main_home_page_container_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_image.dart';
import 'package:houzee/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MainHomePageContainerPage extends StatelessWidget {
  MainHomePageContainerPage({Key? key}) : super(key: key);

  MainHomePageContainerController controller = Get.put(
      MainHomePageContainerController(MainHomePageContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.primaryContainer,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimaryContainer,
                child: Column(children: [
                  _buildAppBar(),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        _buildMainDishes(),
                        SizedBox(height: 225.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("lbl_best_sellers".tr,
                                style: CustomTextStyles.titleLargeAcme)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgStar2,
                                  height: 12.v,
                                  width: 11.h,
                                  margin: EdgeInsets.only(top: 3.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text("lbl_4_8".tr,
                                      style:
                                          CustomTextStyles.bodyMediumRed400)),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "lbl_105".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "msg_ratings_starts".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "lbl_2000".tr,
                                            style: CustomTextStyles
                                                .bodyMediumffef5b5b)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])),
                        SizedBox(height: 257.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("msg_discounted_offers".tr,
                                style: CustomTextStyles.titleLargeAcme)),
                        SizedBox(height: 2.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgStar5,
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 4.v, bottom: 22.v)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.h, top: 1.v, bottom: 19.v),
                                      child: Text("lbl_4_6".tr,
                                          style: CustomTextStyles
                                              .bodyLargeRed400)),
                                  Container(
                                      width: 185.h,
                                      margin: EdgeInsets.only(left: 5.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_500_ratings2".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeff736969),
                                            TextSpan(
                                                text: "lbl_500".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeffef5b5b)
                                          ]),
                                          textAlign: TextAlign.left))
                                ])),
                        SizedBox(height: 215.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("lbl_meal_plans".tr,
                                style: CustomTextStyles.titleLargeAcme)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Row(children: [
                              SizedBox(
                                  width: 36.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar6,
                                            height: 12.v,
                                            width: 11.h,
                                            margin: EdgeInsets.only(top: 3.v)),
                                        Text("lbl_5_0".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRed400)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "lbl_203".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "msg_ratings_starts2".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "lbl_from".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_30_000".tr,
                                            style: CustomTextStyles
                                                .bodyMediumffef5b5b)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])),
                        SizedBox(height: 41.v),
                        Padding(
                            padding: EdgeInsets.only(left: 132.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconmonstrArrow59,
                                  height: 32.v,
                                  width: 31.h),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 9.v, bottom: 6.v),
                                  child: Text("lbl_back_to_top".tr,
                                      style: CustomTextStyles
                                          .bodySmallAcmeOnPrimary))
                            ]))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 31.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomAppBar(
              height: 31.v,
              leadingWidth: 53.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 29.h, top: 6.v, bottom: 7.v)),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgIconmonstrBasket1,
                    margin: EdgeInsets.symmetric(horizontal: 29.h))
              ]),
          SizedBox(height: 1.v),
          Padding(
              padding: EdgeInsets.only(right: 98.h),
              child: Text("lbl_happy_meal".tr,
                  style: CustomTextStyles.headlineLargeAcmePrimaryContainer)),
          SizedBox(height: 23.v),
          Container(
              width: 253.h,
              margin: EdgeInsets.only(right: 50.h),
              child: Text("msg_homemade_meals_prepared".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeAcme)),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.center,
              child: CustomSearchView(
                  width: 232.h,
                  controller: controller.searchController,
                  hintText: "lbl_search_local".tr,
                  alignment: Alignment.center,
                  borderDecoration: SearchViewStyleHelper.outlineBlackTL18,
                  fillColor: theme.colorScheme.primaryContainer)),
          SizedBox(height: 34.v)
        ]));
  }

  /// Section Widget
  Widget _buildMainDishes() {
    return SizedBox(
        height: 273.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup158,
              height: 57.v,
              width: 375.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 231.v,
                            width: 319.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text("lbl_main_dishes".tr,
                                          style:
                                              CustomTextStyles.titleLargeAcme)),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: 210.v,
                                          width: 318.h,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSumptous1210x318,
                                                    height: 210.v,
                                                    width: 318.h,
                                                    alignment: Alignment.center,
                                                    onTap: () {
                                                      onTapImgSumptousOne();
                                                    }),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage1,
                                                    height: 53.v,
                                                    width: 105.h,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    margin: EdgeInsets.only(
                                                        bottom: 6.v))
                                              ])))
                                ])),
                        SizedBox(height: 3.v),
                        Container(
                            decoration: AppDecoration.outlineBlack90001,
                            child:
                                Row(mainAxisSize: MainAxisSize.min, children: [
                              SizedBox(
                                  width: 31.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgStar1,
                                            height: 12.v,
                                            width: 11.h,
                                            margin: EdgeInsets.only(
                                                top: 2.v, bottom: 1.v)),
                                        Text("lbl_4_9".tr,
                                            style: CustomTextStyles
                                                .bodyMediumRed400)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_355_ratings2".tr,
                                            style: CustomTextStyles
                                                .bodyMediumff736969),
                                        TextSpan(
                                            text: "lbl_2500".tr,
                                            style: CustomTextStyles
                                                .bodyMediumffef5b5b)
                                      ]),
                                      textAlign: TextAlign.left))
                            ]))
                      ])))
        ]));
  }

  /// Navigates to the restaurantPageScreen when the action is triggered.
  onTapImgSumptousOne() {
    Get.toNamed(
      AppRoutes.restaurantPageScreen,
    );
  }
}
