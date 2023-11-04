import '../controller/mobile_employee_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileEmployeeScreen.
///
/// This class ensures that the MobileEmployeeController is created when the
/// MobileEmployeeScreen is first loaded.
class MobileEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileEmployeeController());
  }
}
