import '../../../core/app_export.dart';

/// This class is used in the [menulist_item_widget] screen.
class MenulistItemModel {
  MenulistItemModel({
    this.dish1Name,
    this.dish1Price,
    this.dish1Count,
    this.id,
  }) {
    dish1Name = dish1Name ?? Rx("Dish 1");
    dish1Price = dish1Price ?? Rx("300 Rupees");
    dish1Count = dish1Count ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? dish1Name;

  Rx<String>? dish1Price;

  Rx<String>? dish1Count;

  Rx<String>? id;
}
