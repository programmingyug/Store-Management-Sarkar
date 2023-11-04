import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_tab_container_screen/models/mobile_inventory_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobileInventoryTabContainerScreen.
///
/// This class manages the state of the MobileInventoryTabContainerScreen, including the
/// current mobileInventoryTabContainerModelObj
class MobileInventoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MobileInventoryTabContainerModel> mobileInventoryTabContainerModelObj =
      MobileInventoryTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
