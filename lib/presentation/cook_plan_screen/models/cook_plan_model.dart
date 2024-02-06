import 'planfooddeliveries1_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [cook_plan_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CookPlanModel {
  Rx<List<Planfooddeliveries1ItemModel>> planfooddeliveries1ItemList =
      Rx(List.generate(3, (index) => Planfooddeliveries1ItemModel()));
}
