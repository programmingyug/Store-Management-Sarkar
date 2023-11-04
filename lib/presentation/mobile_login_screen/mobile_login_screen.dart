import 'controller/mobile_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/core/utils/validation_functions.dart';
import 'package:programming_s_application1/widgets/custom_elevated_button.dart';
import 'package:programming_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileLoginScreen extends GetWidget<MobileLoginController> {
  MobileLoginScreen({Key? key})
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
            padding: EdgeInsets.all(42.h),
            child: Column(
              children: [
                Text(
                  "lbl_login".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 33.v),
                CustomImageView(
                  imagePath: ImageConstant.imgIllustration,
                  height: 207.v,
                  width: 274.h,
                ),
                SizedBox(height: 55.v),
                CustomTextFormField(
                  controller: controller.emailController,
                  hintText: "lbl_email_id".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.v),
                CustomTextFormField(
                  controller: controller.passwordController,
                  hintText: "lbl_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  text: "lbl_login".tr,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    right: 28.h,
                  ),
                  buttonTextStyle: CustomTextStyles.headlineSmallGray100,
                ),
                SizedBox(height: 46.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        "lbl_new_user".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_register".tr,
                        style: CustomTextStyles.titleMediumBluegray700.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
