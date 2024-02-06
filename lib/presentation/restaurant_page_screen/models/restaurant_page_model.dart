import '../../../core/app_export.dart';
import 'menulist_item_model.dart';

/// This class defines the variables used in the [restaurant_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RestaurantPageModel {
  Rx<List<MenulistItemModel>> menulistItemList = Rx([
    MenulistItemModel(
        dish1Name: "Dish 1".obs,
        dish1Price: "300 Rupees".obs,
        dish1Count: "1".obs)
  ]);
}
