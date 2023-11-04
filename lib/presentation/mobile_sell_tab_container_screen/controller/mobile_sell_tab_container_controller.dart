import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_sell_tab_container_screen/models/mobile_sell_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileSellTabContainerScreen.
///
/// This class manages the state of the MobileSellTabContainerScreen, including the
/// current mobileSellTabContainerModelObj
class MobileSellTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MobileSellTabContainerModel> mobileSellTabContainerModelObj =
      MobileSellTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
