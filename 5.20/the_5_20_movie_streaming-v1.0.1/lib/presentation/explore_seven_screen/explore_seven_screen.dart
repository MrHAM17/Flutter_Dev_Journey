import '../explore_seven_screen/widgets/io_item_widget.dart';
import '../explore_seven_screen/widgets/specials6_item_widget.dart';
import '../explore_seven_screen/widgets/turnerhooch_item_widget.dart';
import 'models/explore_seven_model.dart';
import 'models/io_item_model.dart';
import 'models/specials6_item_model.dart';
import 'models/turnerhooch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_title.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_20_movie_streaming/widgets/app_bar/custom_app_bar.dart';
import 'provider/explore_seven_provider.dart';

class ExploreSevenScreen extends StatefulWidget {
  const ExploreSevenScreen({Key? key}) : super(key: key);

  @override
  ExploreSevenScreenState createState() => ExploreSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ExploreSevenProvider(),
        child: ExploreSevenScreen());
  }
}

class ExploreSevenScreenState extends State<ExploreSevenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 17.v),
                              _buildSpecials(context),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, right: 16.h),
                                  child: _buildFrameSixty(context,
                                      action: "lbl_drama".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 17.v),
                              _buildIO(context),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 20.h),
                                  child: _buildFrameSixty(context,
                                      action: "lbl_action".tr,
                                      more: "lbl_more".tr)),
                              SizedBox(height: 17.v),
                              _buildTurnerHooch(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildSpecials(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child:
            Consumer<ExploreSevenProvider>(builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.only(left: 4.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: provider.exploreSevenModelObj.specials6ItemList.length,
              itemBuilder: (context, index) {
                Specials6ItemModel model =
                    provider.exploreSevenModelObj.specials6ItemList[index];
                return Specials6ItemWidget(model, onTapImgDrama: () {
                  onTapImgDrama(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildIO(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Consumer<ExploreSevenProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 223.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider.exploreSevenModelObj.ioItemList.length,
              itemBuilder: (context, index) {
                IoItemModel model =
                    provider.exploreSevenModelObj.ioItemList[index];
                return IoItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildTurnerHooch(BuildContext context) {
    return Consumer<ExploreSevenProvider>(builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 223.v,
              crossAxisCount: 3,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.exploreSevenModelObj.turnerhoochItemList.length,
          itemBuilder: (context, index) {
            TurnerhoochItemModel model =
                provider.exploreSevenModelObj.turnerhoochItemList[index];
            return TurnerhoochItemWidget(model, onTapMovieCard: () {
              onTapMovieCard(context);
            });
          });
    });
  }

  /// Common widget
  Widget _buildFrameSixty(
    BuildContext context, {
    required String action,
    required String more,
  }) {
    return Row(children: [
      Text(action,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(more,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the seeMoreFiveScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreFiveScreen,
    );
  }
}
