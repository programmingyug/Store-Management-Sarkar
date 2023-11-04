import 'controller/mobile_inventory_one_controller.dart';
import 'models/mobile_inventory_one_model.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';

class MobileInventoryOnePage extends StatelessWidget {
  MobileInventoryOnePage({Key? key})
      : super(
          key: key,
        );

  MobileInventoryOneController controller =
      Get.put(MobileInventoryOneController(MobileInventoryOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              _buildRecentOrders(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Container(
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillOnError.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_product".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Spacer(
                        flex: 54,
                      ),
                      Text(
                        "lbl_items".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Spacer(
                        flex: 45,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "lbl_price".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 20.h,
                  ),
                  child: _buildAngelJones(
                    userName: "lbl_pat_black".tr,
                    userAge: "lbl_20".tr,
                    userPrice: "lbl_450_00".tr,
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 20.h,
                  ),
                  child: _buildAngelJones(
                    userName: "lbl_angel_jones".tr,
                    userAge: "lbl_35".tr,
                    userPrice: "lbl_180_00".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 20.h,
                  ),
                  child: _buildAngelJones(
                    userName: "lbl_max_edwards".tr,
                    userAge: "lbl_96".tr,
                    userPrice: "lbl_50_00".tr,
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 20.h,
                  ),
                  child: _buildAngelJones(
                    userName: "lbl_bruce_fox".tr,
                    userAge: "lbl_52".tr,
                    userPrice: "lbl_45_00".tr,
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 20.h,
                  ),
                  child: _buildAngelJones(
                    userName: "lbl_devon_fisher".tr,
                    userAge: "lbl_180".tr,
                    userPrice: "lbl_1550_00".tr,
                  ),
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAngelJones({
    required String userName,
    required String userAge,
    required String userPrice,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          userName,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        Spacer(
          flex: 59,
        ),
        Text(
          userAge,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        Spacer(
          flex: 40,
        ),
        Text(
          userPrice,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
      ],
    );
  }
}
