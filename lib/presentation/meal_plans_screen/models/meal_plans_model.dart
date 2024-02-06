import 'planfooddeliveries_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [meal_plans_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MealPlansModel {
  Rx<List<PlanfooddeliveriesItemModel>> planfooddeliveriesItemList =
      Rx(List.generate(3, (index) => PlanfooddeliveriesItemModel()));
}
