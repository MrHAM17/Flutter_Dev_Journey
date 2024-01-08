import '../search_page/widgets/searchpage_item_widget.dart';
import 'models/search_model.dart';
import 'models/searchpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_icon_button.dart';
import 'provider/search_provider.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchPageState createState() => SearchPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: SearchPage(),
    );
  }
}

class SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildSeventyTwo(context),
                      SizedBox(height: 22.v),
                      _buildSearchPage(context),
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
  Widget _buildRecommended(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 2.v,
        bottom: 3.v,
      ),
      child: Text(
        "msg_recommended_586_379".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildRecommended(context),
        Spacer(),
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          padding: EdgeInsets.all(2.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgUserPrimary28x28,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGrid,
          height: 28.adaptSize,
          width: 28.adaptSize,
          margin: EdgeInsets.only(left: 12.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchPage(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider.searchModelObj.searchpageItemList.length,
          itemBuilder: (context, index) {
            SearchpageItemModel model =
                provider.searchModelObj.searchpageItemList[index];
            return SearchpageItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
