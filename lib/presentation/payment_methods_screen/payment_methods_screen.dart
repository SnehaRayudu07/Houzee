import '../payment_methods_screen/widgets/paymentmethodslist_item_widget.dart';
import 'controller/payment_methods_controller.dart';
import 'models/paymentmethodslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';

class PaymentMethodsScreen extends GetWidget<PaymentMethodsController> {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 27.h, vertical: 20.v),
                    child: Column(children: [
                      Text("lbl_payment_methods".tr,
                          style: CustomTextStyles.headlineLargeLight),
                      SizedBox(height: 25.v),
                      Divider(color: appTheme.black90001),
                      SizedBox(height: 48.v),
                      _buildTelevisionRow(),
                      SizedBox(height: 50.v),
                      Divider(color: appTheme.black90001),
                      SizedBox(height: 48.v),
                      _buildPaymentMethodsList()
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
  Widget _buildTelevisionRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgTelevision, height: 40.v, width: 70.h),
      CustomImageView(
          imagePath: ImageConstant.imgClose, height: 40.v, width: 70.h)
    ]);
  }

  /// Section Widget
  Widget _buildPaymentMethodsList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0.v),
              child: SizedBox(
                  width: 317.h,
                  child: Divider(
                      height: 2.v,
                      thickness: 2.v,
                      color: appTheme.black90001)));
        },
        itemCount: controller.paymentMethodsModelObj.value
            .paymentmethodslistItemList.value.length,
        itemBuilder: (context, index) {
          PaymentmethodslistItemModel model = controller.paymentMethodsModelObj
              .value.paymentmethodslistItemList.value[index];
          return PaymentmethodslistItemWidget(model);
        }));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapClose() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
