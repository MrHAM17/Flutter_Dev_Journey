import '../my_order_screen/widgets/myorder_item_widget.dart';
import 'models/my_order_model.dart';
import 'models/myorder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_12_street_style___e_commerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_12_street_style___e_commerce_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/my_order_provider.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  MyOrderScreenState createState() => MyOrderScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyOrderProvider(), child: MyOrderScreen());
  }
}

class MyOrderScreenState extends State<MyOrderScreen> {
  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Text("lbl_my_order".tr,
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 14.v),
                      SizedBox(
                          height: 703.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 51.h, bottom: 68.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 9.v),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl".tr,
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "lbl_5"
                                                            .tr
                                                            .toUpperCase(),
                                                        style: theme.textTheme
                                                            .headlineMedium),
                                                    TextSpan(
                                                        text: "lbl_8".tr,
                                                        style: theme.textTheme
                                                            .headlineMedium)
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 89.h),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_1".tr,
                                                        style: CustomTextStyles
                                                            .displaySmallBlack90001),
                                                    TextSpan(
                                                        text: "lbl_x".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90001)
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]))),
                            _buildMyOrder(context)
                          ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 28.h, top: 13.v, bottom: 13.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup86,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup84,
              margin: EdgeInsets.only(left: 24.h, top: 13.v, right: 37.h))
        ]);
  }

  /// Section Widget
  Widget _buildMyOrder(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<MyOrderProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 24.v);
              },
              itemCount: provider.myOrderModelObj.myorderItemList.length,
              itemBuilder: (context, index) {
                MyorderItemModel model =
                    provider.myOrderModelObj.myorderItemList[index];
                return MyorderItemWidget(model);
              });
        }));
  }
}
