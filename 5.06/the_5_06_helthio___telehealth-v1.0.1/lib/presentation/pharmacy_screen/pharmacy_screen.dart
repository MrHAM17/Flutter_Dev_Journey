import '../pharmacy_screen/widgets/popularproduct_item_widget.dart';
import '../pharmacy_screen/widgets/productonsale_item_widget.dart';
import 'dart:async';
import 'models/pharmacy_model.dart';
import 'models/popularproduct_item_model.dart';
import 'models/productonsale_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_search_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'provider/pharmacy_provider.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  PharmacyScreenState createState() => PharmacyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PharmacyProvider(), child: PharmacyScreen());
  }
}

// ignore_for_file: must_be_immutable
class PharmacyScreenState extends State<PharmacyScreen> {
  Completer<WebViewController> webViewController =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Selector<PharmacyProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.searchController,
                          builder: (context, searchController, child) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "msg_search_drugs_category".tr);
                          })),
                  SizedBox(height: 24.v),
                  _buildCTA(context),
                  SizedBox(height: 27.v),
                  _buildPopularProduct1(context),
                  SizedBox(height: 26.v),
                  _buildProductOnSale(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 10.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_pharmacy".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildCTA(BuildContext context) {
    return SizedBox(
        height: 135.v,
        width: 335.h,
        child: WebView(
            initialUrl: 'https://flutter.dev',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) {
              webViewController.complete(controller);
            },
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            onPageStarted: (String url) {
              print("Page started loading: $url");
            },
            onPageFinished: (String url) {
              print("Page finished loading: $url");
            }));
  }

  /// Section Widget
  Widget _buildPopularProduct1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child: _buildHeader(context,
                      productOnSale: "lbl_popular_product".tr,
                      seeAll: "lbl_see_all".tr)),
              SizedBox(height: 10.v),
              SizedBox(
                  height: 165.v,
                  child: Consumer<PharmacyProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 21.h);
                        },
                        itemCount: provider
                            .pharmacyModelObj.popularproductItemList.length,
                        itemBuilder: (context, index) {
                          PopularproductItemModel model = provider
                              .pharmacyModelObj.popularproductItemList[index];
                          return PopularproductItemWidget(model);
                        });
                  }))
            ])));
  }

  /// Section Widget
  Widget _buildProductOnSale(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child: _buildHeader(context,
                      productOnSale: "lbl_product_on_sale".tr,
                      seeAll: "lbl_see_all".tr)),
              SizedBox(height: 12.v),
              SizedBox(
                  height: 165.v,
                  child: Consumer<PharmacyProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 17.h);
                        },
                        itemCount: provider
                            .pharmacyModelObj.productonsaleItemList.length,
                        itemBuilder: (context, index) {
                          ProductonsaleItemModel model = provider
                              .pharmacyModelObj.productonsaleItemList[index];
                          return ProductonsaleItemWidget(model);
                        });
                  }))
            ])));
  }

  /// Common widget
  Widget _buildHeader(
    BuildContext context, {
    required String productOnSale,
    required String seeAll,
  }) {
    return Row(children: [
      Text(productOnSale,
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.onPrimary)),
      Padding(
          padding: EdgeInsets.only(left: 170.h, bottom: 3.v),
          child: Text(seeAll,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
