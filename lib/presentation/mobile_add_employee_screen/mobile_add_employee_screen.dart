import 'controller/mobile_add_employee_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/core/utils/validation_functions.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:programming_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:programming_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:programming_s_application1/widgets/custom_elevated_button.dart';
import 'package:programming_s_application1/widgets/custom_radio_button.dart';
import 'package:programming_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileAddEmployeeScreen extends GetWidget<MobileAddEmployeeController> {
  MobileAddEmployeeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 30.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_account".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 19.v),
                _buildFirstName(),
                SizedBox(height: 20.v),
                _buildLastName(),
                SizedBox(height: 20.v),
                _buildEmail(),
                SizedBox(height: 20.v),
                _buildPassword(),
                SizedBox(height: 20.v),
                _buildConfirmPassword(),
                SizedBox(height: 20.v),
                _buildGender(),
                SizedBox(height: 20.v),
                _buildAge(),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "lbl_type".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildEmployeeType(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildRegister(),
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
  Widget _buildFirstName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "lbl_first_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_last_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email_id".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.confirmPasswordController,
        hintText: "msg_confirm_password".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildGender() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.genderController,
        hintText: "lbl_gender".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildAge() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      child: CustomTextFormField(
        controller: controller.ageController,
        hintText: "lbl_age".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployeeType() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Obx(
          () => Row(
            children: [
              CustomRadioButton(
                text: "lbl_manager".tr,
                value: controller
                    .mobileAddEmployeeModelObj.value.radioList.value[0],
                groupValue: controller.employeeType.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  controller.employeeType.value = value;
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: CustomRadioButton(
                  text: "lbl_employee".tr,
                  value: controller
                      .mobileAddEmployeeModelObj.value.radioList.value[1],
                  groupValue: controller.employeeType.value,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    controller.employeeType.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister() {
    return CustomElevatedButton(
      width: 120.h,
      text: "lbl_register".tr,
      margin: EdgeInsets.only(
        left: 128.h,
        right: 127.h,
        bottom: 43.v,
      ),
    );
  }
}
