import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/verification_page_dialog/models/verification_page_model.dart';

/// A controller class for the VerificationPageDialog.
///
/// This class manages the state of the VerificationPageDialog, including the
/// current verificationPageModelObj
class VerificationPageController extends GetxController {
  Rx<VerificationPageModel> verificationPageModelObj =
      VerificationPageModel().obs;
}
