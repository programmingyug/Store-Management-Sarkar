import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_one_page/models/mobile_inventory_one_model.dart';

/// A controller class for the MobileInventoryOnePage.
///
/// This class manages the state of the MobileInventoryOnePage, including the
/// current mobileInventoryOneModelObj
class MobileInventoryOneController extends GetxController {
  MobileInventoryOneController(this.mobileInventoryOneModelObj);

  Rx<MobileInventoryOneModel> mobileInventoryOneModelObj;
}
