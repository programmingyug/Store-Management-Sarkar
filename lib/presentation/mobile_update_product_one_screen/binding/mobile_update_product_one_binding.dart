import '../controller/mobile_update_product_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileUpdateProductOneScreen.
///
/// This class ensures that the MobileUpdateProductOneController is created when the
/// MobileUpdateProductOneScreen is first loaded.
class MobileUpdateProductOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileUpdateProductOneController());
  }
}
