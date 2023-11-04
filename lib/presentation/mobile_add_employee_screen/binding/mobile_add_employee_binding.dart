import '../controller/mobile_add_employee_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MobileAddEmployeeScreen.
///
/// This class ensures that the MobileAddEmployeeController is created when the
/// MobileAddEmployeeScreen is first loaded.
class MobileAddEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileAddEmployeeController());
  }
}
