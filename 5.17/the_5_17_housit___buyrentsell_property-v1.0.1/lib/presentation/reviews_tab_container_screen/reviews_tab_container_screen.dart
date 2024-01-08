import 'models/reviews_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/reviews_page/reviews_page.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'provider/reviews_tab_container_provider.dart';class ReviewsTabContainerScreen extends StatefulWidget {const ReviewsTabContainerScreen({Key? key}) : super(key: key);

@override ReviewsTabContainerScreenState createState() =>  ReviewsTabContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewsTabContainerProvider(), child: ReviewsTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ReviewsTabContainerScreenState extends State<ReviewsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 5, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Column(children: [_buildEstatesCardWide(context), SizedBox(height: 20.v), _buildTabview(context), SizedBox(height: 565.v, child: TabBarView(controller: tabviewController, children: [ReviewsPage(), ReviewsPage(), ReviewsPage(), ReviewsPage(), ReviewsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_reviews".tr)); } 
/// Section Widget
Widget _buildEstatesCardWide(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape160x144, height: 104.v, width: 168.h, radius: BorderRadius.circular(15.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL122, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 88.h, child: Text("msg_sky_dandelions_apartment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalOrange300, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 51.v, width: 351.h, child: TabBar(controller: tabviewController, isScrollable: true, labelColor: appTheme.gray100, labelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.blueGray80001, unselectedLabelStyle: TextStyle(fontSize: 10.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500), indicatorPadding: EdgeInsets.all(0.5.h), indicator: BoxDecoration(color: appTheme.greenA400, borderRadius: BorderRadius.circular(25.h)), tabs: [Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v), decoration: AppDecoration.fillGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 9.h, top: 4.v), child: Text("lbl_all".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_1".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_2".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text("lbl_3".tr))]))), Tab(child: Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text("lbl_4".tr))])))])); } 
/// Common widget
Widget _buildLayout(BuildContext context, {required String text, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h), Padding(padding: EdgeInsets.only(left: 8.h, top: 5.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 
/// Common widget
Widget _buildLayout1(BuildContext context, {required String text, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClose, height: 15.adaptSize, width: 15.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h, top: 1.v), child: Text(text, style: theme.textTheme.labelMedium!.copyWith(color: appTheme.blueGray80001)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
