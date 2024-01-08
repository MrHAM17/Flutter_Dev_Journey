import '../language_screen/widgets/chineses_item_widget.dart';
import '../language_screen/widgets/englishuk_item_widget.dart';
import 'models/chineses_item_model.dart';
import 'models/englishuk_item_model.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/appbar_title.dart';
import 'package:the_5_11_hired___job_search/widgets/app_bar/custom_app_bar.dart';
import 'provider/language_provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenState createState() => LanguageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(), child: LanguageScreen());
  }
}

class LanguageScreenState extends State<LanguageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v),
                child: Column(children: [
                  _buildSuggestedLanguages(context),
                  SizedBox(height: 24.v),
                  _buildOtherLanguages(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_language".tr));
  }

  /// Section Widget
  Widget _buildSuggestedLanguages(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_suggested_languages".tr,
                  style: CustomTextStyles.labelLargeSemiBold),
              SizedBox(height: 16.v),
              Consumer<LanguageProvider>(builder: (context, provider, child) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.0.v),
                          child: SizedBox(
                              width: 295.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.gray300)));
                    },
                    itemCount:
                        provider.languageModelObj.englishukItemList.length,
                    itemBuilder: (context, index) {
                      EnglishukItemModel model =
                          provider.languageModelObj.englishukItemList[index];
                      return EnglishukItemWidget(model);
                    });
              })
            ]));
  }

  /// Section Widget
  Widget _buildOtherLanguages(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("lbl_other_languages".tr,
                  style: CustomTextStyles.labelLargeSemiBold),
              SizedBox(height: 19.v),
              Consumer<LanguageProvider>(builder: (context, provider, child) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0.v),
                          child: SizedBox(
                              width: 295.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.gray300)));
                    },
                    itemCount:
                        provider.languageModelObj.chinesesItemList.length,
                    itemBuilder: (context, index) {
                      ChinesesItemModel model =
                          provider.languageModelObj.chinesesItemList[index];
                      return ChinesesItemWidget(model);
                    });
              })
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }
}
