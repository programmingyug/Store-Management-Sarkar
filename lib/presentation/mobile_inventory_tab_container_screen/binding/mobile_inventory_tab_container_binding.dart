import '../controller/mobile_inventory_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileInventoryTabContainerScreen.
///
/// This class ensures that the MobileInventoryTabContainerController is created when the
/// MobileInventoryTabContainerScreen is first loaded.
class MobileInventoryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileInventoryTabContainerController());
  }
}
