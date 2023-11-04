import 'controller/mobile_update_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:programming_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class MobileUpdateProductScreen
    extends GetWidget<MobileUpdateProductController> {
  const MobileUpdateProductScreen({Key? key})
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
            horizontal: 14.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              _buildEditSection(),
              SizedBox(height: 39.v),
              Container(
                height: 100.adaptSize,
                width: 100.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    50.h,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "lbl_user_name".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 8.v),
              Text(
                "msg_example_example_com".tr,
                style: CustomTextStyles.headlineSmallRegular,
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_m_12_yrs".tr,
                style: CustomTextStyles.titleLargeGray600,
              ),
              SizedBox(height: 5.v),
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
                  text: "lbl_employee".tr,
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
  Widget _buildEditSection() {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_profile".tr,
            style: theme.textTheme.headlineSmall,
          ),
          CustomOutlinedButton(
            height: 24.v,
            width: 74.h,
            text: "lbl_edit".tr,
            margin: EdgeInsets.only(bottom: 5.v),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcbaselineedit,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
