import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/meal_plans_screen/models/meal_plans_model.dart';

/// A controller class for the MealPlansScreen.
///
/// This class manages the state of the MealPlansScreen, including the
/// current mealPlansModelObj
class MealPlansController extends GetxController {
  Rx<MealPlansModel> mealPlansModelObj = MealPlansModel().obs;
}
