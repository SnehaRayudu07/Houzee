import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/checkout_page_screen/models/checkout_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CheckoutPageScreen.
///
/// This class manages the state of the CheckoutPageScreen, including the
/// current checkoutPageModelObj
class CheckoutPageController extends GetxController {
  TextEditingController shippingDetailsController = TextEditingController();

  TextEditingController shippingDetailsController1 = TextEditingController();

  TextEditingController contactDetailsController = TextEditingController();

  TextEditingController contactDetailsController1 = TextEditingController();

  TextEditingController specialNotesForDeliveryController =
      TextEditingController();

  Rx<CheckoutPageModel> checkoutPageModelObj = CheckoutPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    shippingDetailsController.dispose();
    shippingDetailsController1.dispose();
    contactDetailsController.dispose();
    contactDetailsController1.dispose();
    specialNotesForDeliveryController.dispose();
  }
}
