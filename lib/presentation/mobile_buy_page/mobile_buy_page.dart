import 'controller/mobile_buy_controller.dart';
import 'models/mobile_buy_model.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';
import 'package:programming_s_application1/core/utils/validation_functions.dart';
import 'package:programming_s_application1/widgets/custom_elevated_button.dart';
import 'package:programming_s_application1/widgets/custom_outlined_button.dart';
import 'package:programming_s_application1/widgets/custom_text_form_field.dart';

class MobileBuyPage extends StatelessWidget {
  MobileBuyPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  MobileBuyController controller =
      Get.put(MobileBuyController(MobileBuyModel().obs));

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
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_buy_items".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Divider(
                        color: appTheme.gray400,
                      ),
                      SizedBox(height: 17.v),
                      _buildBuyItems(),
                      SizedBox(height: 20.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 20.v),
                      _buildAddress(),
                      SizedBox(height: 27.v),
                      Divider(
                        color: appTheme.gray400,
                      ),
                      SizedBox(height: 17.v),
                      _buildName(),
                      SizedBox(height: 20.v),
                      Container(
                        width: 279.h,
                        margin: EdgeInsets.only(
                          left: 21.h,
                          right: 25.h,
                        ),
                        child: Text(
                          "msg_select_a_product".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBluegray700,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildPrice(),
                      SizedBox(height: 20.v),
                      _buildNumberOfItems(),
                      SizedBox(height: 20.v),
                      _buildExpirydate(),
                      SizedBox(height: 45.v),
                      _buildAddProduct(),
                      SizedBox(height: 50.v),
                      _buildBuy(),
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
  Widget _buildBuyItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.buyItemsController,
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
  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.phoneNumberController,
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
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.nameController,
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
  Widget _buildPrice() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.priceController,
        hintText: "lbl_price".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNumberOfItems() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.numberOfItemsController,
        hintText: "lbl_no_of_items".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildExpirydate() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: CustomTextFormField(
        controller: controller.expirydateController,
        hintText: "lbl_expiry_date".tr,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddProduct() {
    return CustomOutlinedButton(
      width: 114.h,
      text: "lbl_add_product".tr,
    );
  }

  /// Section Widget
  Widget _buildBuy() {
    return CustomElevatedButton(
      width: 100.h,
      text: "lbl_buy".tr,
    );
  }
}
