import '../controller/mobile_splash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileSplashScreen.
///
/// This class ensures that the MobileSplashController is created when the
/// MobileSplashScreen is first loaded.
class MobileSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileSplashController());
  }
}
