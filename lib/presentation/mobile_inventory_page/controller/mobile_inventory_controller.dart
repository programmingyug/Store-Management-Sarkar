import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_page/models/mobile_inventory_model.dart';

/// A controller class for the MobileInventoryPage.
///
/// This class manages the state of the MobileInventoryPage, including the
/// current mobileInventoryModelObj
class MobileInventoryController extends GetxController {
  MobileInventoryController(this.mobileInventoryModelObj);

  Rx<MobileInventoryModel> mobileInventoryModelObj;
}
