import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_drawer_screen/models/mobile_drawer_model.dart';

/// A controller class for the MobileDrawerScreen.
///
/// This class manages the state of the MobileDrawerScreen, including the
/// current mobileDrawerModelObj
class MobileDrawerController extends GetxController {
  Rx<MobileDrawerModel> mobileDrawerModelObj = MobileDrawerModel().obs;
}
