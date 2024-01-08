import 'models/my_home_empty_model.dart';import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_search_page/home_search_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/message_page/message_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/my_home_page/my_home_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/profile_page/profile_page.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_bottom_bar.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'provider/my_home_empty_provider.dart';class MyHomeEmptyScreen extends StatefulWidget {const MyHomeEmptyScreen({Key? key}) : super(key: key);

@override MyHomeEmptyScreenState createState() =>  MyHomeEmptyScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => MyHomeEmptyProvider(), child: MyHomeEmptyScreen()); } 
 }

// ignore_for_file: must_be_immutable
class MyHomeEmptyScreenState extends State<MyHomeEmptyScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgFrame, height: 255.adaptSize, width: 255.adaptSize), SizedBox(height: 63.v), Text("msg_ready_to_sell_your".tr, style: theme.textTheme.titleLarge), SizedBox(height: 6.v), SizedBox(width: 324.h, child: Text("msg_relax_is_making".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 22.v), CustomElevatedButton(height: 45.v, width: 155.h, text: "lbl_add_proprty".tr, onPressed: () {onTapAddProprty(context);})])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
/// Navigates to the homeScreen when the action is triggered.
onTapAddProprty(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeScreen, ); } 
 }
