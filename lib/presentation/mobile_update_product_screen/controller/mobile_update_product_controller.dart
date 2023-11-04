import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_screen/models/mobile_update_product_model.dart';

/// A controller class for the MobileUpdateProductScreen.
///
/// This class manages the state of the MobileUpdateProductScreen, including the
/// current mobileUpdateProductModelObj
class MobileUpdateProductController extends GetxController {
  Rx<MobileUpdateProductModel> mobileUpdateProductModelObj =
      MobileUpdateProductModel().obs;
}
