import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_home_screen/models/mobile_home_model.dart';

/// A controller class for the MobileHomeScreen.
///
/// This class manages the state of the MobileHomeScreen, including the
/// current mobileHomeModelObj
class MobileHomeController extends GetxController {
  Rx<MobileHomeModel> mobileHomeModelObj = MobileHomeModel().obs;
}
