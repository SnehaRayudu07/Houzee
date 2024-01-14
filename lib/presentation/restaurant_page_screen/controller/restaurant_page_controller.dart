import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/restaurant_page_screen/models/restaurant_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RestaurantPageScreen.
///
/// This class manages the state of the RestaurantPageScreen, including the
/// current restaurantPageModelObj
class RestaurantPageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<RestaurantPageModel> restaurantPageModelObj = RestaurantPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
