import '../../../core/app_export.dart';

/// This class is used in the [planfooddeliveries1_item_widget] screen.
class Planfooddeliveries1ItemModel {
  Planfooddeliveries1ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
