import '../recently_booked_screen/widgets/recentlybooked_item_widget.dart';import 'models/recently_booked_model.dart';import 'models/recentlybooked_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'provider/recently_booked_provider.dart';class RecentlyBookedScreen extends StatefulWidget {const RecentlyBookedScreen({Key? key}) : super(key: key);

@override RecentlyBookedScreenState createState() =>  RecentlyBookedScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RecentlyBookedProvider(), child: RecentlyBookedScreen()); } 
 }
class RecentlyBookedScreenState extends State<RecentlyBookedScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 18.v, right: 24.h), child: Consumer<RecentlyBookedProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.recentlyBookedModelObj.recentlybookedItemList.length, itemBuilder: (context, index) {RecentlybookedItemModel model = provider.recentlyBookedModelObj.recentlybookedItemList[index]; return RecentlybookedItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_recently_booked".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgUserPrimary28x28, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGrid, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
