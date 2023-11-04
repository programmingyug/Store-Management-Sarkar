import '../controller/mobile_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileHomeScreen.
///
/// This class ensures that the MobileHomeController is created when the
/// MobileHomeScreen is first loaded.
class MobileHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileHomeController());
  }
}
