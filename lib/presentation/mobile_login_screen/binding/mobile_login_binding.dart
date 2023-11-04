import '../controller/mobile_login_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileLoginScreen.
///
/// This class ensures that the MobileLoginController is created when the
/// MobileLoginScreen is first loaded.
class MobileLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileLoginController());
  }
}
