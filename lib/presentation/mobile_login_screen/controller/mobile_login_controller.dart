import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_login_screen/models/mobile_login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileLoginScreen.
///
/// This class manages the state of the MobileLoginScreen, including the
/// current mobileLoginModelObj
class MobileLoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<MobileLoginModel> mobileLoginModelObj = MobileLoginModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
