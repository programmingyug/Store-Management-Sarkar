import 'controller/mobile_sell_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/presentation/mobile_buy_page/mobile_buy_page.dart';
import 'package:programming_s_application1/presentation/mobile_history_page/mobile_history_page.dart';
import 'package:programming_s_application1/presentation/mobile_sell_page/mobile_sell_page.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MobileSellTabContainerScreen
    extends GetWidget<MobileSellTabContainerController> {
  const MobileSellTabContainerScreen({Key? key})
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
              height: 777.v,
              child: TabBarView(
                controller: controller.tabviewController,
                children: [
                  MobileBuyPage(),
                  MobileSellPage(),
                  MobileHistoryPage(),
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
      height: 79.v,
      centerTitle: true,
      title: SizedBox(
        height: 66.89.v,
        width: 325.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 61.v,
                ),
                child: SizedBox(
                  width: 325.h,
                  child: Divider(
                    color: appTheme.gray100,
                    endIndent: 301.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 55.v,
                ),
                child: SizedBox(
                  width: 325.h,
                  child: Divider(
                    color: appTheme.gray100,
                    endIndent: 301.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 66.89.v,
              width: 325.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  AppbarSubtitle(
                    text: "lbl_transactions".tr,
                    margin: EdgeInsets.only(
                      left: 40.h,
                      right: 195.h,
                      bottom: 46.v,
                    ),
                  ),
                  Container(
                    height: 50.v,
                    width: 325.h,
                    margin: EdgeInsets.only(top: 16.v),
                    child: TabBar(
                      controller: controller.tabviewController,
                      labelPadding: EdgeInsets.zero,
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
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 19.v,
                              bottom: 10.v,
                            ),
                            child: Text(
                              "lbl_buy".tr,
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 18.v,
                              bottom: 11.v,
                            ),
                            child: Text(
                              "lbl_sell".tr,
                            ),
                          ),
                        ),
                        Tab(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 19.v,
                              bottom: 10.v,
                            ),
                            child: Text(
                              "lbl_history".tr,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 35.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }
}
