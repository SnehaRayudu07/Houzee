import '../meal_plans_screen/widgets/planfooddeliveries_item_widget.dart';
import 'controller/meal_plans_controller.dart';
import 'models/planfooddeliveries_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';

class MealPlansScreen extends GetWidget<MealPlansController> {
  const MealPlansScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.all(10.h),
                    child: Column(children: [
                      Text("lbl_partner_plans".tr,
                          style: theme.textTheme.displaySmall),
                      SizedBox(height: 66.v),
                      _buildPartnerPlansDescription(),
                      SizedBox(height: 62.v),
                      _buildPlanFoodDeliveries()
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

  /// Section Widget
  Widget _buildPartnerPlansDescription() {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 9.h, vertical: 6.v),
                        decoration: AppDecoration.boxShade.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 37.v),
                          SizedBox(
                              width: 146.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_plan_1".tr,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text: "msg_3_food_deliveries".tr,
                                        style: CustomTextStyles.bodyMediumLight
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])),
                    SizedBox(height: 10.v),
                    GestureDetector(
                        onTap: () {
                          onTapSeventySix();
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 46.h, right: 42.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 3.v),
                            decoration: AppDecoration.outlineBlack900012
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 43.h,
                                      child: Text("lbl_buy_now_3_200".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall))
                                ])))
                  ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(children: [
                    Container(
                        height: 166.adaptSize,
                        width: 166.adaptSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.h),
                            gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [
                                  appTheme.gray80033,
                                  appTheme.black90001.withOpacity(0.2)
                                ]))),
                    SizedBox(height: 10.v),
                    GestureDetector(
                        onTap: () {
                          onTapSeventySeven();
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 48.h, right: 40.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 3.v),
                            decoration: AppDecoration.outlineBlack900012
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 43.h,
                                      child: Text("lbl_buy_now_3_200".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall))
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildPlanFoodDeliveries() {
    return SizedBox(
        height: 219.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 3.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 1.h);
            },
            itemCount: controller.mealPlansModelObj.value
                .planfooddeliveriesItemList.value.length,
            itemBuilder: (context, index) {
              PlanfooddeliveriesItemModel model = controller.mealPlansModelObj
                  .value.planfooddeliveriesItemList.value[index];
              return PlanfooddeliveriesItemWidget(model);
            })));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapSeventySix() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapSeventySeven() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
