import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_sell_page/models/mobile_sell_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileSellPage.
///
/// This class manages the state of the MobileSellPage, including the
/// current mobileSellModelObj
class MobileSellController extends GetxController {
  MobileSellController(this.mobileSellModelObj);

  TextEditingController sellItemsNameController = TextEditingController();

  TextEditingController sellItemsPhoneNumberController =
      TextEditingController();

  TextEditingController sellItemsAddressController = TextEditingController();

  TextEditingController sellItemsName2Controller = TextEditingController();

  TextEditingController sellItemsPriceController = TextEditingController();

  TextEditingController sellItemsNumberOfItemsController =
      TextEditingController();

  TextEditingController sellItemsExpiryDateController = TextEditingController();

  Rx<MobileSellModel> mobileSellModelObj;

  @override
  void onClose() {
    super.onClose();
    sellItemsNameController.dispose();
    sellItemsPhoneNumberController.dispose();
    sellItemsAddressController.dispose();
    sellItemsName2Controller.dispose();
    sellItemsPriceController.dispose();
    sellItemsNumberOfItemsController.dispose();
    sellItemsExpiryDateController.dispose();
  }
}
