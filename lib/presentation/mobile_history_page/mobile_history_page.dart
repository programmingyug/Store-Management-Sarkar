import 'controller/mobile_history_controller.dart';
import 'models/mobile_history_model.dart';
import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';

class MobileHistoryPage extends StatelessWidget {
  MobileHistoryPage({Key? key})
      : super(
          key: key,
        );

  MobileHistoryController controller =
      Get.put(MobileHistoryController(MobileHistoryModel().obs));

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
              SizedBox(height: 30.v),
              _buildSeventySeven(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySeven() {
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
                    horizontal: 20.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillOnError.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          top: 3.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_date".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "lbl_type".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_product".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 26.h,
                          top: 3.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_items".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_price".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 20.h,
                  ),
                  child: _buildSeventy(
                    dec: "lbl_20_dec".tr,
                    sell: "lbl_buy".tr,
                    userName: "lbl_pat_black".tr,
                    userFiftyTwo: "lbl_20".tr,
                    userPrice: "lbl_450_00".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 20.h,
                  ),
                  child: _buildSixtyNine(
                    dec: "lbl_25_dec".tr,
                    buy: "lbl_sell".tr,
                    name: "lbl_angel_jones".tr,
                    quantity: "lbl_35".tr,
                    price: "lbl_180_00".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 20.h,
                  ),
                  child: _buildSixtyNine(
                    dec: "lbl_25_dec".tr,
                    buy: "lbl_buy".tr,
                    name: "lbl_max_edwards".tr,
                    quantity: "lbl_96".tr,
                    price: "lbl_50_00".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 20.h,
                  ),
                  child: _buildSeventy(
                    dec: "lbl_25_dec".tr,
                    sell: "lbl_sell".tr,
                    userName: "lbl_bruce_fox".tr,
                    userFiftyTwo: "lbl_52".tr,
                    userPrice: "lbl_45_00".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 20.h,
                  ),
                  child: _buildSixtyNine(
                    dec: "lbl_25_dec".tr,
                    buy: "lbl_buy".tr,
                    name: "lbl_devon_fisher".tr,
                    quantity: "lbl_180".tr,
                    price: "lbl_1550_00".tr,
                  ),
                ),
                SizedBox(height: 16.v),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyNine({
    required String dec,
    required String buy,
    required String name,
    required String quantity,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgMdiDownloadBox,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            dec,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            buy,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 19.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            name,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            quantity,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            price,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventy({
    required String dec,
    required String sell,
    required String userName,
    required String userFiftyTwo,
    required String userPrice,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgMdiDownloadBox,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            dec,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 9.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            sell,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 21.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            userName,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(
            userFiftyTwo,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            userPrice,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
      ],
    );
  }
}
