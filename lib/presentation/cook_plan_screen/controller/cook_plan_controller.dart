import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/cook_plan_screen/models/cook_plan_model.dart';

/// A controller class for the CookPlanScreen.
///
/// This class manages the state of the CookPlanScreen, including the
/// current cookPlanModelObj
class CookPlanController extends GetxController {
  Rx<CookPlanModel> cookPlanModelObj = CookPlanModel().obs;
}
