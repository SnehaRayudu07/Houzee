import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/forgot_password_page_dialog/models/forgot_password_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordPageDialog.
///
/// This class manages the state of the ForgotPasswordPageDialog, including the
/// current forgotPasswordPageModelObj
class ForgotPasswordPageController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordPageModel> forgotPasswordPageModelObj =
      ForgotPasswordPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
