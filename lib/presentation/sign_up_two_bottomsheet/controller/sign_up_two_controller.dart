import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/sign_up_two_bottomsheet/models/sign_up_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoBottomsheet.
///
/// This class manages the state of the SignUpTwoBottomsheet, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {
  TextEditingController userNameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  TextEditingController confirmPasswordSectionController =
      TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameSectionController.dispose();
    emailSectionController.dispose();
    passwordSectionController.dispose();
    confirmPasswordSectionController.dispose();
  }
}
