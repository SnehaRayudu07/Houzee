import '../controller/restaurant_page_controller.dart';
import '../models/menulist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  MenulistItemWidget(
    this.menulistItemModelObj, {
    Key? key,
    this.onTapDishOne,
  }) : super(
          key: key,
        );

  MenulistItemModel menulistItemModelObj;

  var controller = Get.find<RestaurantPageController>();

  VoidCallback? onTapDishOne;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillPrimaryContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSumptous1,
              height: 76.v,
              width: 83.h,
              radius: BorderRadius.circular(
                20.h,
              ),
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 2.v,
                bottom: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      menulistItemModelObj.dish1Name!.value,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Obx(
                      () => Text(
                        menulistItemModelObj.dish1Price!.value,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Opacity(
              opacity: 0.8,
              child: GestureDetector(
                onTap: () {
                  onTapDishOne!.call();
                },
                child: Container(
                  width: 97.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 32.v,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCarbonSubtract,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Container(
                        height: 19.v,
                        width: 37.h,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUpload,
                              height: 19.v,
                              width: 37.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: Obx(
                                  () => Text(
                                    menulistItemModelObj.dish1Count!.value,
                                    style: CustomTextStyles
                                        .bodyMediumPrimaryContainer,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbolsLightAdd,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
