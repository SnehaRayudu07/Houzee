import '../controller/payment_methods_controller.dart';
import '../models/paymentmethodslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodslistItemWidget extends StatelessWidget {
  PaymentmethodslistItemWidget(
    this.paymentmethodslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodslistItemModel paymentmethodslistItemModelObj;

  var controller = Get.find<PaymentMethodsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: paymentmethodslistItemModelObj.vector!.value,
            height: 40.v,
            width: 70.h,
            margin: EdgeInsets.only(bottom: 50.v),
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: paymentmethodslistItemModelObj.profile!.value,
            height: 40.v,
            width: 70.h,
            margin: EdgeInsets.only(bottom: 50.v),
          ),
        ),
      ],
    );
  }
}
