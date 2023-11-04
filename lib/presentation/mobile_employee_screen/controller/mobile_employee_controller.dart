import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_employee_screen/models/mobile_employee_model.dart';

/// A controller class for the MobileEmployeeScreen.
///
/// This class manages the state of the MobileEmployeeScreen, including the
/// current mobileEmployeeModelObj
class MobileEmployeeController extends GetxController {
  Rx<MobileEmployeeModel> mobileEmployeeModelObj = MobileEmployeeModel().obs;
}
