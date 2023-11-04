import 'package:programming_s_application1/presentation/mobile_login_screen/mobile_login_screen.dart';
import 'package:programming_s_application1/presentation/mobile_login_screen/binding/mobile_login_binding.dart';
import 'package:programming_s_application1/presentation/mobile_register_screen/mobile_register_screen.dart';
import 'package:programming_s_application1/presentation/mobile_register_screen/binding/mobile_register_binding.dart';
import 'package:programming_s_application1/presentation/mobile_splash_screen/mobile_splash_screen.dart';
import 'package:programming_s_application1/presentation/mobile_splash_screen/binding/mobile_splash_binding.dart';
import 'package:programming_s_application1/presentation/mobile_drawer_screen/mobile_drawer_screen.dart';
import 'package:programming_s_application1/presentation/mobile_drawer_screen/binding/mobile_drawer_binding.dart';
import 'package:programming_s_application1/presentation/mobile_employee_screen/mobile_employee_screen.dart';
import 'package:programming_s_application1/presentation/mobile_employee_screen/binding/mobile_employee_binding.dart';
import 'package:programming_s_application1/presentation/mobile_add_employee_screen/mobile_add_employee_screen.dart';
import 'package:programming_s_application1/presentation/mobile_add_employee_screen/binding/mobile_add_employee_binding.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_tab_container_screen/mobile_inventory_tab_container_screen.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_tab_container_screen/binding/mobile_inventory_tab_container_binding.dart';
import 'package:programming_s_application1/presentation/mobile_sell_tab_container_screen/mobile_sell_tab_container_screen.dart';
import 'package:programming_s_application1/presentation/mobile_sell_tab_container_screen/binding/mobile_sell_tab_container_binding.dart';
import 'package:programming_s_application1/presentation/mobile_home_screen/mobile_home_screen.dart';
import 'package:programming_s_application1/presentation/mobile_home_screen/binding/mobile_home_binding.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_one_screen/mobile_update_product_one_screen.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_one_screen/binding/mobile_update_product_one_binding.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_screen/mobile_update_product_screen.dart';
import 'package:programming_s_application1/presentation/mobile_update_product_screen/binding/mobile_update_product_binding.dart';
import 'package:programming_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:programming_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String mobileLoginScreen = '/mobile_login_screen';

  static const String mobileRegisterScreen = '/mobile_register_screen';

  static const String mobileSplashScreen = '/mobile_splash_screen';

  static const String mobileDrawerScreen = '/mobile_drawer_screen';

  static const String mobileEmployeeScreen = '/mobile_employee_screen';

  static const String mobileAddEmployeeScreen = '/mobile_add_employee_screen';

  static const String mobileInventoryOnePage = '/mobile_inventory_one_page';

  static const String mobileInventoryPage = '/mobile_inventory_page';

  static const String mobileInventoryTabContainerScreen =
      '/mobile_inventory_tab_container_screen';

  static const String mobileBuyPage = '/mobile_buy_page';

  static const String mobileSellPage = '/mobile_sell_page';

  static const String mobileSellTabContainerScreen =
      '/mobile_sell_tab_container_screen';

  static const String mobileHistoryPage = '/mobile_history_page';

  static const String mobileHomeScreen = '/mobile_home_screen';

  static const String mobileUpdateProductOneScreen =
      '/mobile_update_product_one_screen';

  static const String mobileUpdateProductScreen =
      '/mobile_update_product_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mobileLoginScreen,
      page: () => MobileLoginScreen(),
      bindings: [
        MobileLoginBinding(),
      ],
    ),
    GetPage(
      name: mobileRegisterScreen,
      page: () => MobileRegisterScreen(),
      bindings: [
        MobileRegisterBinding(),
      ],
    ),
    GetPage(
      name: mobileSplashScreen,
      page: () => MobileSplashScreen(),
      bindings: [
        MobileSplashBinding(),
      ],
    ),
    GetPage(
      name: mobileDrawerScreen,
      page: () => MobileDrawerScreen(),
      bindings: [
        MobileDrawerBinding(),
      ],
    ),
    GetPage(
      name: mobileEmployeeScreen,
      page: () => MobileEmployeeScreen(),
      bindings: [
        MobileEmployeeBinding(),
      ],
    ),
    GetPage(
      name: mobileAddEmployeeScreen,
      page: () => MobileAddEmployeeScreen(),
      bindings: [
        MobileAddEmployeeBinding(),
      ],
    ),
    GetPage(
      name: mobileInventoryTabContainerScreen,
      page: () => MobileInventoryTabContainerScreen(),
      bindings: [
        MobileInventoryTabContainerBinding(),
      ],
    ),
    GetPage(
      name: mobileSellTabContainerScreen,
      page: () => MobileSellTabContainerScreen(),
      bindings: [
        MobileSellTabContainerBinding(),
      ],
    ),
    GetPage(
      name: mobileHomeScreen,
      page: () => MobileHomeScreen(),
      bindings: [
        MobileHomeBinding(),
      ],
    ),
    GetPage(
      name: mobileUpdateProductOneScreen,
      page: () => MobileUpdateProductOneScreen(),
      bindings: [
        MobileUpdateProductOneBinding(),
      ],
    ),
    GetPage(
      name: mobileUpdateProductScreen,
      page: () => MobileUpdateProductScreen(),
      bindings: [
        MobileUpdateProductBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MobileSplashScreen(),
      bindings: [
        MobileSplashBinding(),
      ],
    )
  ];
}
