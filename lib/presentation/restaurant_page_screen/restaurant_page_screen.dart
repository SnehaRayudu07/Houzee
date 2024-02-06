import '../restaurant_page_screen/widgets/menulist_item_widget.dart';
import 'controller/restaurant_page_controller.dart';
import 'models/menulist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_outlined_button.dart';
import 'package:houzee/widgets/custom_rating_bar.dart';
import 'package:houzee/widgets/custom_search_view.dart';

class RestaurantPageScreen extends GetWidget<RestaurantPageController> {
  const RestaurantPageScreen({Key? key}) : super(key: key);

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
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          _buildHomeNameStack(),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 27.h, right: 65.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle77,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 7.v, bottom: 6.v)),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 27.h),
                                        child: CustomSearchView(
                                            controller:
                                                controller.searchController,
                                            hintText: "lbl_search_menu".tr)))
                              ])),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text("lbl_our_best".tr,
                                  style: CustomTextStyles.titleLargeGray700)),
                          SizedBox(height: 11.v),
                          _buildMenuList(),
                          SizedBox(height: 11.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildHomeNameStack() {
    return SizedBox(
        height: 504.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 417.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 417.v,
                        width: 375.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 24.h, top: 43.v, right: 16.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 29.v,
                                      width: 17.h,
                                      margin: EdgeInsets.only(left: 15.h),
                                      onTap: () {
                                        onTapImgArrowLeft();
                                      }),
                                  SizedBox(height: 241.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomOutlinedButton(
                                            width: 136.h,
                                            text: "lbl_home_name".tr),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup43,
                                            height: 19.v,
                                            width: 18.h,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 9.v))
                                      ])
                                ])))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 125.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(7.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup158),
                          fit: BoxFit.cover)),
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 22.h, vertical: 10.v),
                                          decoration: AppDecoration.outlineBlack
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    child: Text("lbl_4_5".tr,
                                                        style: CustomTextStyles
                                                            .titleLargeGray70001)),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            18.h,
                                                            3.v,
                                                            2.h,
                                                            7.v),
                                                    child: CustomRatingBar(
                                                        initialRating: 1))
                                              ]))),
                                  SizedBox(height: 15.v),
                                  SizedBox(
                                      width: 339.h,
                                      child: Text("msg_our_fried_rice_is".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallRobotoBlack9000110))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 17.h, top: 12.v),
                            child: Text("lbl_cook_name".tr,
                                style: CustomTextStyles.titleLargeRegular)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildMenuList() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, right: 16.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 12.v);
                },
                itemCount: controller
                    .restaurantPageModelObj.value.menulistItemList.value.length,
                itemBuilder: (context, index) {
                  MenulistItemModel model = controller.restaurantPageModelObj
                      .value.menulistItemList.value[index];
                  return MenulistItemWidget(model, onTapDishOne: () {
                    onTapDishOne();
                  });
                }))));
  }

  /// Navigates to the cartPageScreen when the action is triggered.
  onTapDishOne() {
    Get.toNamed(AppRoutes.cartPageScreen);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
