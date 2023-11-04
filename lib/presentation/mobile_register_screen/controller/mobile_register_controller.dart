import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_register_screen/models/mobile_register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileRegisterScreen.
///
/// This class manages the state of the MobileRegisterScreen, including the
/// current mobileRegisterModelObj
class MobileRegisterController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Rx<MobileRegisterModel> mobileRegisterModelObj = MobileRegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    nameController.dispose();
    addressController.dispose();
  }
}
