import 'controller/mobile_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MobileDrawerScreen extends GetWidget<MobileDrawerController> {
  const MobileDrawerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 30.v,
                    ),
                    decoration: AppDecoration.outlinePrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMdiHome,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "lbl_home".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 29.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMdiFormatList,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "lbl_inventory".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 27.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMdiAccount,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 2.v,
                              ),
                              child: Text(
                                "lbl_employees".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgFaSolidFileInvoiceDollar,
                                height: 24.v,
                                width: 16.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                  "lbl_transactions".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 27.v),
                      ],
                    ),
                  ),
                  Container(
                    height: 622.v,
                    width: 152.h,
                    margin: EdgeInsets.only(bottom: 312.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 24.h,
                        child: Divider(
                          color: appTheme.gray100,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 24.h,
                        child: Divider(
                          color: appTheme.gray100,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        width: 24.h,
                        child: Divider(
                          color: appTheme.gray100,
                        ),
                      ),
                    ],
                  ),
                ),
                AppbarSubtitle(
                  text: "lbl_home".tr,
                  margin: EdgeInsets.only(left: 16.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(16.h, 11.v, 16.h, 10.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
