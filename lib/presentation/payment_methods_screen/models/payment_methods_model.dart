import '../../../core/app_export.dart';
import 'paymentmethodslist_item_model.dart';

/// This class defines the variables used in the [payment_methods_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodsModel {
  Rx<List<PaymentmethodslistItemModel>> paymentmethodslistItemList = Rx([
    PaymentmethodslistItemModel(
        vector: ImageConstant.imgVector.obs,
        profile: ImageConstant.imgProfile.obs),
    PaymentmethodslistItemModel(
        vector: ImageConstant.imgTelevisionPrimary.obs,
        profile: ImageConstant.imgVectorPrimary.obs),
    PaymentmethodslistItemModel(
        vector: ImageConstant.imgTelevisionPrimary40x72.obs,
        profile: ImageConstant.imgTelevisionPrimary40x70.obs)
  ]);
}
