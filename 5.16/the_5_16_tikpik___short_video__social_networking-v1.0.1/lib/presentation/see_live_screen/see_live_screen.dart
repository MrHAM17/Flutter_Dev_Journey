import '../see_live_screen/widgets/seelive_item_widget.dart';import 'models/see_live_model.dart';import 'models/seelive_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'provider/see_live_provider.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/viewers_bottomsheet/viewers_bottomsheet.dart';class SeeLiveScreen extends StatefulWidget {const SeeLiveScreen({Key? key}) : super(key: key);

@override SeeLiveScreenState createState() =>  SeeLiveScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SeeLiveProvider(), child: SeeLiveScreen()); } 
 }
class SeeLiveScreenState extends State<SeeLiveScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, image: DecorationImage(image: AssetImage(ImageConstant.imgSeeLive), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 24.v), SizedBox(height: 858.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(height: 200.v, width: double.maxFinite, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [theme.colorScheme.primaryContainer, theme.colorScheme.primaryContainer.withOpacity(0.6)])))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 36.v), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFollow1(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Row(children: [_buildWeeklyRanking(context), _buildExplore(context)])), Spacer(), _buildSeeLive(context)])))]))]))))); } 
/// Section Widget
Widget _buildFollow(BuildContext context) { return CustomElevatedButton(height: 32.v, width: 73.h, text: "lbl_follow".tr, margin: EdgeInsets.only(top: 9.v, bottom: 7.v)); } 
/// Section Widget
Widget _buildK(BuildContext context) { return CustomElevatedButton(height: 32.v, width: 87.h, text: "lbl_3_6k".tr, margin: EdgeInsets.only(top: 9.v, bottom: 7.v), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, onPressed: () {onTapK(context);}); } 
/// Section Widget
Widget _buildFollow1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgPlay, height: 48.adaptSize, width: 48.adaptSize), Padding(padding: EdgeInsets.only(top: 6.v, bottom: 3.v), child: Column(children: [Text("lbl_sarah_wilona".tr, style: CustomTextStyles.titleSmallOnErrorContainerBold), SizedBox(height: 6.v), Text("lbl_dancer_singer".tr, style: CustomTextStyles.labelLargeGray300)])), _buildFollow(context), _buildK(context)])), CustomImageView(imagePath: ImageConstant.imgCategoriesXCloseOnerrorcontainer, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 41.h, top: 13.v, bottom: 11.v))]); } 
/// Section Widget
Widget _buildWeeklyRanking(BuildContext context) { return CustomElevatedButton(height: 28.v, width: 143.h, text: "lbl_weekly_ranking".tr, leftIcon: Container(margin: EdgeInsets.only(right: 9.h), child: CustomImageView(imagePath: ImageConstant.imgSignal, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.labelLarge!, onPressed: () {onTapWeeklyRanking(context);}); } 
/// Section Widget
Widget _buildExplore(BuildContext context) { return CustomElevatedButton(height: 28.v, width: 98.h, text: "lbl_explore".tr, margin: EdgeInsets.only(left: 12.h), leftIcon: Container(margin: EdgeInsets.only(right: 9.h), child: CustomImageView(imagePath: ImageConstant.imgFloatingicon, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: theme.textTheme.labelLarge!); } 
/// Section Widget
Widget _buildSeeLive(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Consumer<SeeLiveProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: provider.seeLiveModelObj.seeliveItemList.length, itemBuilder: (context, index) {SeeliveItemModel model = provider.seeLiveModelObj.seeliveItemList[index]; return SeeliveItemWidget(model);});})); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ViewersBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapK(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ViewersBottomsheet.builder(context),isScrollControlled: true); } 
/// Navigates to the weeklyRankingTabContainerScreen when the action is triggered.
onTapWeeklyRanking(BuildContext context) { NavigatorService.pushNamed(AppRoutes.weeklyRankingTabContainerScreen, ); } 
 }
