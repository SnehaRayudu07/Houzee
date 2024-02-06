import '../../../core/app_export.dart';

/// This class is used in the [paymentmethodslist_item_widget] screen.
class PaymentmethodslistItemModel {
  PaymentmethodslistItemModel({
    this.vector,
    this.profile,
    this.id,
  }) {
    vector = vector ?? Rx(ImageConstant.imgVector);
    profile = profile ?? Rx(ImageConstant.imgProfile);
    id = id ?? Rx("");
  }

  Rx<String>? vector;

  Rx<String>? profile;

  Rx<String>? id;
}
