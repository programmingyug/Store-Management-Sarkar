import 'controller/mobile_employee_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:programming_s_application1/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class MobileEmployeeScreen extends GetWidget<MobileEmployeeController> {
  const MobileEmployeeScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30.v),
              _buildEighteen(),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
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
  Widget _buildEighteen() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_name".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 38,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_gender".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 26,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_email".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 34,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    right: 7.h,
                  ),
                  child: Text(
                    "lbl_age".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: _buildBruceFox(
              userName: "lbl_pat_black".tr,
              male: "lbl_male".tr,
              userEmail: "msg_bill_berry_example_com".tr,
              userAge: "lbl_28".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: _buildNinetyNine(
              userName: "lbl_angel_jones".tr,
              userGender: "lbl_female".tr,
              userEmail: "msg_bill_berry_example_com".tr,
              userAge: "lbl_36".tr,
            ),
          ),
          SizedBox(height: 7.v),
          Divider(),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: _buildNinetyNine(
              userName: "lbl_max_edwards".tr,
              userGender: "lbl_female".tr,
              userEmail: "msg_bill_berry_example_com".tr,
              userAge: "lbl_27".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: _buildBruceFox(
              userName: "lbl_bruce_fox".tr,
              male: "lbl_male".tr,
              userEmail: "msg_bill_berry_example_com".tr,
              userAge: "lbl_43".tr,
            ),
          ),
          SizedBox(height: 7.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: _buildNinetyNine(
              userName: "lbl_devon_fisher".tr,
              userGender: "lbl_male".tr,
              userEmail: "msg_bill_berry_example_com".tr,
              userAge: "lbl_32".tr,
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: appTheme.teal30001,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }

  /// Common widget
  Widget _buildNinetyNine({
    required String userName,
    required String userGender,
    required String userEmail,
    required String userAge,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 10.v,
          ),
          child: Text(
            userName,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 1.v,
            bottom: 10.v,
          ),
          child: Text(
            userGender,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Container(
          width: 102.h,
          margin: EdgeInsets.only(left: 14.h),
          child: Text(
            userEmail,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallLatoBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 1.v,
            bottom: 10.v,
          ),
          child: Text(
            userAge,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBruceFox({
    required String userName,
    required String male,
    required String userEmail,
    required String userAge,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 11.v),
          child: Text(
            userName,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 11.v),
          child: Text(
            male,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Container(
          width: 102.h,
          margin: EdgeInsets.only(left: 27.h),
          child: Text(
            userEmail,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodySmallLatoBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            bottom: 11.v,
          ),
          child: Text(
            userAge,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }
}
