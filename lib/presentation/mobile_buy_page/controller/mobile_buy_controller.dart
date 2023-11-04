import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_buy_page/models/mobile_buy_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileBuyPage.
///
/// This class manages the state of the MobileBuyPage, including the
/// current mobileBuyModelObj
class MobileBuyController extends GetxController {
  MobileBuyController(this.mobileBuyModelObj);

  TextEditingController buyItemsController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController numberOfItemsController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  Rx<MobileBuyModel> mobileBuyModelObj;

  @override
  void onClose() {
    super.onClose();
    buyItemsController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    nameController.dispose();
    priceController.dispose();
    numberOfItemsController.dispose();
    expirydateController.dispose();
  }
}
