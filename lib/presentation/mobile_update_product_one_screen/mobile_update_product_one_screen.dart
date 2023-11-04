import 'controller/mobile_update_product_one_controller.dart';
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
class MobileUpdateProductOneScreen
    extends GetWidget<MobileUpdateProductOneController> {
  MobileUpdateProductOneScreen({Key? key})
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_account".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 21.h,
                  ),
                  child: CustomTextFormField(
                    controller: controller.nameController,
                    hintText: "lbl_name".tr,
                    alignment: Alignment.center,
                    validator: (value) {
                      if (!isText(value)) {
                        return "err_msg_please_enter_valid_text".tr;
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 21.h,
                  ),
                  child: CustomTextFormField(
                    controller: controller.mRPController,
                    hintText: "lbl_mrp".tr,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "lbl_type".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildTypeRadioGroup(),
                SizedBox(height: 51.v),
                CustomElevatedButton(
                  width: 120.h,
                  text: "lbl_update".tr,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 5.v),
              ],
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
  Widget _buildTypeRadioGroup() {
    return Padding(
      padding: EdgeInsets.only(left: 30.h),
      child: Obx(
        () => Row(
          children: [
            CustomRadioButton(
              text: "lbl_loose".tr,
              value: controller
                  .mobileUpdateProductOneModelObj.value.radioList.value[0],
              groupValue: controller.typeRadioGroup.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.typeRadioGroup.value = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 47.h),
              child: CustomRadioButton(
                text: "lbl_packed".tr,
                value: controller
                    .mobileUpdateProductOneModelObj.value.radioList.value[1],
                groupValue: controller.typeRadioGroup.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  controller.typeRadioGroup.value = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
