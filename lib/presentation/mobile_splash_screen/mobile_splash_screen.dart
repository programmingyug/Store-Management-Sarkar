import 'controller/mobile_splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';

class MobileSplashScreen extends GetWidget<MobileSplashController> {
  const MobileSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 52.h, top: 203.v, right: 52.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup1,
                      height: 103.v,
                      width: 104.h),
                  SizedBox(height: 5.v),
                  Text("lbl_inventory".tr, style: theme.textTheme.displayLarge)
                ]))));
  }
}
