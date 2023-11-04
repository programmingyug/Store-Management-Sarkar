import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_history_page/models/mobile_history_model.dart';

/// A controller class for the MobileHistoryPage.
///
/// This class manages the state of the MobileHistoryPage, including the
/// current mobileHistoryModelObj
class MobileHistoryController extends GetxController {
  MobileHistoryController(this.mobileHistoryModelObj);

  Rx<MobileHistoryModel> mobileHistoryModelObj;
}
