import '../../../core/app_export.dart';

/// This class defines the variables used in the [mobile_add_employee_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MobileAddEmployeeModel {
  Rx<List<String>> radioList = Rx(["lbl_manager", "lbl_employee"]);
}
