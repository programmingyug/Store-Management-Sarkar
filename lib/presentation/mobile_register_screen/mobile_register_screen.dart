import 'controller/mobile_register_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/core/utils/validation_functions.dart';
import 'package:programming_s_application1/widgets/custom_elevated_button.dart';
import 'package:programming_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileRegisterScreen extends GetWidget<MobileRegisterController> {
  MobileRegisterScreen({Key? key})
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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 33.h,
              vertical: 42.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_register".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_account".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 19.v),
                _buildFullName(),
                SizedBox(height: 20.v),
                _buildEmail(),
                SizedBox(height: 20.v),
                _buildPassword(),
                SizedBox(height: 20.v),
                _buildConfirmpassword(),
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_shop_details".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildName(),
                SizedBox(height: 20.v),
                _buildAddress(),
                SizedBox(height: 30.v),
                _buildRegisterButton(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 9.h,
      ),
      child: CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
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
        left: 10.h,
        right: 9.h,
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
        left: 10.h,
        right: 9.h,
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
  Widget _buildConfirmpassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 9.h,
      ),
      child: CustomTextFormField(
        controller: controller.confirmpasswordController,
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
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 9.h,
      ),
      child: CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_name".tr,
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
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 9.h,
      ),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_address".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      margin: EdgeInsets.only(
        left: 38.h,
        right: 37.h,
      ),
      buttonTextStyle: CustomTextStyles.headlineSmallGray100,
    );
  }
}
