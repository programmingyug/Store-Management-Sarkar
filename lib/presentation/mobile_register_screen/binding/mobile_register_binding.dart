import '../controller/mobile_register_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileRegisterScreen.
///
/// This class ensures that the MobileRegisterController is created when the
/// MobileRegisterScreen is first loaded.
class MobileRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileRegisterController());
  }
}
