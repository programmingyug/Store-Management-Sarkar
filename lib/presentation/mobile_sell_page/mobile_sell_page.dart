import 'controller/mobile_sell_controller.dart';
import 'models/mobile_sell_model.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/core/utils/validation_functions.dart';
import 'package:programming_s_application1/widgets/custom_elevated_button.dart';
import 'package:programming_s_application1/widgets/custom_outlined_button.dart';
import 'package:programming_s_application1/widgets/custom_text_form_field.dart';

class MobileSellPage extends StatelessWidget {
  MobileSellPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MobileSellController controller =
      Get.put(MobileSellController(MobileSellModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_sell_items".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Divider(
                        color: appTheme.gray400,
                      ),
                      SizedBox(height: 17.v),
                      _buildSellItemsName(),
                      SizedBox(height: 20.v),
                      _buildSellItemsPhoneNumber(),
                      SizedBox(height: 20.v),
                      _buildSellItemsAddress(),
                      SizedBox(height: 27.v),
                      Divider(
                        color: appTheme.gray400,
                      ),
                      SizedBox(height: 17.v),
                      _buildSellItemsName2(),
                      SizedBox(height: 20.v),
                      SizedBox(
                        width: 224.h,
                        child: Text(
                          "msg_select_a_product2".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBluegray700,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildSellItemsPrice(),
                      SizedBox(height: 20.v),
                      _buildSellItemsNumberOfItems(),
                      SizedBox(height: 20.v),
                      _buildSellItemsExpiryDate(),
                      SizedBox(height: 45.v),
                      _buildSellItemsAddProduct(),
                      SizedBox(height: 50.v),
                      _buildSellItemsBuy(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsNameController,
        hintText: "lbl_customer_name".tr,
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
  Widget _buildSellItemsPhoneNumber() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsPhoneNumberController,
        hintText: "lbl_phone_number".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsAddress() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsAddressController,
        hintText: "lbl_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsName2() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsName2Controller,
        hintText: "lbl_product_name".tr,
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
  Widget _buildSellItemsPrice() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsPriceController,
        hintText: "lbl_price".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsNumberOfItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsNumberOfItemsController,
        hintText: "lbl_no_of_items".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsExpiryDate() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.sellItemsExpiryDateController,
        hintText: "lbl_expiry_date".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSellItemsAddProduct() {
    return CustomOutlinedButton(
      width: 114.h,
      text: "lbl_add_product".tr,
    );
  }

  /// Section Widget
  Widget _buildSellItemsBuy() {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_buy".tr,
    );
  }
}
