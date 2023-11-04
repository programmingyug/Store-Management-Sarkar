import 'controller/mobile_inventory_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_one_page/mobile_inventory_one_page.dart';
import 'package:programming_s_application1/presentation/mobile_inventory_page/mobile_inventory_page.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MobileInventoryTabContainerScreen
    extends GetWidget<MobileInventoryTabContainerController> {
  const MobileInventoryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildOne(),
              SizedBox(
                height: 588.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MobileInventoryOnePage(),
                    MobileInventoryPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return Container(
      decoration: AppDecoration.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          CustomAppBar(
            height: 23.v,
            title: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.v),
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
                        text: "lbl_inventory".tr,
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
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Container(
            height: 31.v,
            width: 300.h,
            child: TabBar(
              controller: controller.tabviewController,
              isScrollable: true,
              labelColor: appTheme.gray100,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: appTheme.gray100,
              unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
              indicatorColor: appTheme.gray100,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_all".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_near_expiry".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
