import 'models/notification_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'provider/notification_provider.dart';class NotificationScreen extends StatefulWidget {const NotificationScreen({Key? key}) : super(key: key);

@override NotificationScreenState createState() =>  NotificationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationProvider(), child: NotificationScreen()); } 
 }
class NotificationScreenState extends State<NotificationScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 12.v), child: Column(children: [_buildNotificationOption(context, listIcon: ImageConstant.imgSort, feed: "lbl_offer".tr, onTapNotificationOption: () {onTapNotificationOption(context);}), _buildNotificationOption(context, listIcon: ImageConstant.imgListIcon, feed: "lbl_feed".tr), SizedBox(height: 5.v), _buildNotificationOption(context, listIcon: ImageConstant.imgNotificationIconPrimary, feed: "lbl_acivity".tr, onTapNotificationOption: () {onTapNotificationOption1(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "lbl_notification".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildNotificationOption(BuildContext context, {required String listIcon, required String feed, Function? onTapNotificationOption, }) { return GestureDetector(onTap: () {onTapNotificationOption!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: listIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v), child: Text(feed, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the notificationOfferScreen when the action is triggered.
onTapNotificationOption(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationOfferScreen, ); } 
/// Navigates to the notificationActivityScreen when the action is triggered.
onTapNotificationOption1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationActivityScreen, ); } 
 }
