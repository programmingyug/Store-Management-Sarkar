import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_add_employee_screen/models/mobile_add_employee_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileAddEmployeeScreen.
///
/// This class manages the state of the MobileAddEmployeeScreen, including the
/// current mobileAddEmployeeModelObj
class MobileAddEmployeeController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  Rx<MobileAddEmployeeModel> mobileAddEmployeeModelObj =
      MobileAddEmployeeModel().obs;

  Rx<String> employeeType = "".obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    genderController.dispose();
    ageController.dispose();
  }
}
