import '../controller/mobile_sell_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileSellTabContainerScreen.
///
/// This class ensures that the MobileSellTabContainerController is created when the
/// MobileSellTabContainerScreen is first loaded.
class MobileSellTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileSellTabContainerController());
  }
}
