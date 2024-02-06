import '../controller/meal_plans_controller.dart';
import '../models/planfooddeliveries_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore: must_be_immutable
class PlanfooddeliveriesItemWidget extends StatelessWidget {
  PlanfooddeliveriesItemWidget(
    this.planfooddeliveriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlanfooddeliveriesItemModel planfooddeliveriesItemModelObj;

  var controller = Get.find<MealPlansController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 53.v),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.boxShade.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      width: 166.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 37.v),
          SizedBox(
            width: 146.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_plan_3".tr,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: "msg_3_food_deliveries".tr,
                    style: CustomTextStyles.bodyMediumLight.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
