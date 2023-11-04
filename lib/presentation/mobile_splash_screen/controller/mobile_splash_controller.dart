import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_splash_screen/models/mobile_splash_model.dart';

/// A controller class for the MobileSplashScreen.
///
/// This class manages the state of the MobileSplashScreen, including the
/// current mobileSplashModelObj
class MobileSplashController extends GetxController {
  Rx<MobileSplashModel> mobileSplashModelObj = MobileSplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.mobileLoginScreen,
      );
    });
  }
}
