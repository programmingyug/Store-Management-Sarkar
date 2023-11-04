import '../controller/mobile_drawer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileDrawerScreen.
///
/// This class ensures that the MobileDrawerController is created when the
/// MobileDrawerScreen is first loaded.
class MobileDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileDrawerController());
  }
}
