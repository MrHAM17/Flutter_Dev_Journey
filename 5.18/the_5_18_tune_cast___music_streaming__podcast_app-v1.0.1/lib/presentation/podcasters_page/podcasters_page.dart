import '../podcasters_page/widgets/podcasters_item_widget.dart';
import 'models/podcasters_item_model.dart';
import 'models/podcasters_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'provider/podcasters_provider.dart';

// ignore_for_file: must_be_immutable
class PodcastersPage extends StatefulWidget {
  const PodcastersPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastersPageState createState() => PodcastersPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PodcastersProvider(),
      child: PodcastersPage(),
    );
  }
}

class PodcastersPageState extends State<PodcastersPage>
    with AutomaticKeepAliveClientMixin<PodcastersPage> {
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
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 29.v),
                      _buildPodcasters(context),
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
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "msg_recently_downloaded".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPodcasters(BuildContext context) {
    return Consumer<PodcastersProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: provider.podcastersModelObj.podcastersItemList.length,
          itemBuilder: (context, index) {
            PodcastersItemModel model =
                provider.podcastersModelObj.podcastersItemList[index];
            return PodcastersItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
