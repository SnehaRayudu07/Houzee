import '../../../core/app_export.dart';

/// This class is used in the [planfooddeliveries_item_widget] screen.
class PlanfooddeliveriesItemModel {
  PlanfooddeliveriesItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
