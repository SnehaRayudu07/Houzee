import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
