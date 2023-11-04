import 'controller/mobile_inventory_controller.dart';
import 'models/mobile_inventory_model.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';

class MobileInventoryPage extends StatelessWidget {
  MobileInventoryPage({Key? key})
      : super(
          key: key,
        );

  MobileInventoryController controller =
      Get.put(MobileInventoryController(MobileInventoryModel().obs));

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
            decoration: AppDecoration.outlineAmber.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineAmber300.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_product".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(
                        flex: 63,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_items".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(
                        flex: 36,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          right: 4.h,
                        ),
                        child: Text(
                          "lbl_days_left".tr,
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
                  child: _buildFortyEight(
                    userName: "lbl_pat_black".tr,
                    userAge: "lbl_20".tr,
                    userScore: "lbl_10".tr,
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
                  child: _buildFortyEight(
                    userName: "lbl_angel_jones".tr,
                    userAge: "lbl_35".tr,
                    userScore: "lbl_3".tr,
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
                  child: _buildFortyEight(
                    userName: "lbl_max_edwards".tr,
                    userAge: "lbl_96".tr,
                    userScore: "lbl_12".tr,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_bruce_fox".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        "lbl_52".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      Text(
                        "lbl_1".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
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
                  child: _buildFortyEight(
                    userName: "lbl_devon_fisher".tr,
                    userAge: "lbl_180".tr,
                    userScore: "lbl_2".tr,
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
  Widget _buildFortyEight({
    required String userName,
    required String userAge,
    required String userScore,
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
          flex: 46,
        ),
        Text(
          userAge,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        Spacer(
          flex: 53,
        ),
        Text(
          userScore,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
      ],
    );
  }
}
