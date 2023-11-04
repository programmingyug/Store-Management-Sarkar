import '../controller/mobile_update_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileUpdateProductScreen.
///
/// This class ensures that the MobileUpdateProductController is created when the
/// MobileUpdateProductScreen is first loaded.
class MobileUpdateProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileUpdateProductController());
  }
}
