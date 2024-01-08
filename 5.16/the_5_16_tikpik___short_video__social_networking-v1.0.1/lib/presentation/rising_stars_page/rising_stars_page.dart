import '../rising_stars_page/widgets/risingstars_item_widget.dart';
import 'models/rising_stars_model.dart';
import 'models/risingstars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/rising_stars_provider.dart';

// ignore_for_file: must_be_immutable
class RisingStarsPage extends StatefulWidget {
  const RisingStarsPage({Key? key})
      : super(
          key: key,
        );

  @override
  RisingStarsPageState createState() => RisingStarsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RisingStarsProvider(),
      child: RisingStarsPage(),
    );
  }
}

class RisingStarsPageState extends State<RisingStarsPage>
    with AutomaticKeepAliveClientMixin<RisingStarsPage> {
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
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSeeLive,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSeeLive,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 17.v),
                _buildRisingstars(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRisingstars(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<RisingStarsProvider>(
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
            itemCount: provider.risingStarsModelObj.risingstarsItemList.length,
            itemBuilder: (context, index) {
              RisingstarsItemModel model =
                  provider.risingStarsModelObj.risingstarsItemList[index];
              return RisingstarsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
