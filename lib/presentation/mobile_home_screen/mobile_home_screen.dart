import 'controller/mobile_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MobileHomeScreen extends GetWidget<MobileHomeController> {
  const MobileHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "msg_sales_and_profit".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 15.v),
              _buildFortyNine(),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "lbl_product_sales".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 15.v),
              _buildChart(),
            ],
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

  /// Section Widget
  Widget _buildFortyNine() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            height: 199.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 34.v,
                    width: 312.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 310.h,
                            child: Divider(
                              color: theme.colorScheme.primary.withOpacity(1),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 6.v,
                                          width: 1.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_1".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 6.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(right: 1.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_3".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 6.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(right: 1.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_5".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 6.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(right: 1.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_7".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 6.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(right: 1.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_9".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 5.h,
                                        child: Text(
                                          "lbl_11".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_13".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_15".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_17".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_19".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_21".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_23".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_25".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_27".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_29".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_31".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_33".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_35".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_37".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_39".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_41".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_43".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_45".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 2.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_47".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 6.v,
                                        width: 1.h,
                                        margin: EdgeInsets.only(right: 1.h),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 7.h,
                                      child: Text(
                                        "lbl_49".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 14.h,
                                child: Text(
                                  "lbl_1000".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 8.v,
                                  bottom: 19.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 7.h,
                                child: Text(
                                  "lbl_750".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 12.v,
                                  bottom: 29.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 6.h,
                                child: Text(
                                  "lbl_500".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 12.v,
                                  bottom: 29.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 6.h,
                                child: Text(
                                  "lbl_250".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 12.v,
                                  bottom: 29.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "lbl_0".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 12.v,
                                  bottom: 1.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 167.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: theme.colorScheme.primary.withOpacity(1),
                          indent: 5.h,
                          endIndent: 2.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 160.v,
                    width: 310.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      right: 2.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup88,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 157.v,
                          width: 310.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorRed400,
                          height: 159.v,
                          width: 310.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 83.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.red200,
                    borderRadius: BorderRadius.circular(
                      6.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_sales".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
                Spacer(),
                Container(
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                  decoration: BoxDecoration(
                    color: appTheme.lightBlue200,
                    borderRadius: BorderRadius.circular(
                      6.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_profit".tr,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChart() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(left: 1.h),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 177.v,
        width: 354.h,
        padding: EdgeInsets.all(13.h),
        decoration: AppDecoration.outlinePrimary2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 5.h,
                  bottom: 3.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(
                      color: theme.colorScheme.primary.withOpacity(1),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(bottom: 13.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_0".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 4.h,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_1".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_3".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 6.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 2.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_4".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_5".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_6".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_7".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_8".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 18.v,
                            width: 5.h,
                            margin: EdgeInsets.only(
                              left: 21.h,
                              bottom: 13.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 1.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_9".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 4.v,
                                    width: 1.h,
                                    margin: EdgeInsets.only(right: 2.h),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 7.h,
                                  child: Text(
                                    "lbl_10".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall,
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
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  SizedBox(
                    height: 130.v,
                    width: 19.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_0".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 9.v,
                                  bottom: 4.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 6.h,
                                  child: Text(
                                    "lbl_250".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Container(
                                  height: 1.v,
                                  width: 3.h,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 9.v,
                                    bottom: 32.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 31.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 6.h,
                                  child: Text(
                                    "lbl_500".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Container(
                                  height: 1.v,
                                  width: 3.h,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 9.v,
                                    bottom: 32.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 26.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 7.h,
                                  child: Text(
                                    "lbl_750".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Container(
                                  height: 1.v,
                                  width: 3.h,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    top: 9.v,
                                    bottom: 32.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 13.h,
                                child: Text(
                                  "lbl_1000".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Container(
                                height: 1.v,
                                width: 3.h,
                                margin: EdgeInsets.only(
                                  left: 2.h,
                                  top: 6.v,
                                  bottom: 21.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 126.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: theme.colorScheme.primary.withOpacity(1),
                      indent: 3.h,
                      endIndent: 5.h,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                  left: 19.h,
                  top: 3.v,
                  right: 5.h,
                ),
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup14,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 106.v,
                      width: 295.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
