import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_one_screen/models/mobile_update_product_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileUpdateProductOneScreen.
///
/// This class manages the state of the MobileUpdateProductOneScreen, including the
/// current mobileUpdateProductOneModelObj
class MobileUpdateProductOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController mRPController = TextEditingController();

  Rx<MobileUpdateProductOneModel> mobileUpdateProductOneModelObj =
      MobileUpdateProductOneModel().obs;

  Rx<String> typeRadioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    mRPController.dispose();
  }
}
