import '../select_saved_screen/widgets/selectsaved_item_widget.dart';
import 'models/select_saved_model.dart';
import 'models/selectsaved_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/home_recently_watched_page/home_recently_watched_page.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/profile_page/profile_page.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/saved_page/saved_page.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/search_page/search_page.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/appbar_title.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/app_bar/custom_app_bar.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/widgets/custom_bottom_bar.dart';
import 'provider/select_saved_provider.dart';

class SelectSavedScreen extends StatefulWidget {
  const SelectSavedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectSavedScreenState createState() => SelectSavedScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectSavedProvider(),
      child: SelectSavedScreen(),
    );
  }
}

class SelectSavedScreenState extends State<SelectSavedScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildSelectSaved(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "lbl_mark_all".tr,
              margin: EdgeInsets.symmetric(vertical: 4.v),
            ),
            AppbarTitle(
              text: "lbl_saved".tr,
              margin: EdgeInsets.only(left: 100.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_delete".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSelectSaved(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Consumer<SelectSavedProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 1.v,
                );
              },
              itemCount:
                  provider.selectSavedModelObj.selectsavedItemList.length,
              itemBuilder: (context, index) {
                SelectsavedItemModel model =
                    provider.selectSavedModelObj.selectsavedItemList[index];
                return SelectsavedItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeRecentlyWatchedPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Downloads:
        return AppRoutes.downloadedPage;
      case BottomBarEnum.Me:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeRecentlyWatchedPage:
        return HomeRecentlyWatchedPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.downloadedPage:
        return DownloadedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
