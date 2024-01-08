import 'models/home_container_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/all_activity_page/all_activity_page.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/home_page/home_page.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/profile_two_page/profile_two_page.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/trending_sounds_tab_container_page.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_bottom_bar.dart';import 'provider/home_container_provider.dart';class HomeContainerScreen extends StatefulWidget {const HomeContainerScreen({Key? key}) : super(key: key);

@override HomeContainerScreenState createState() =>  HomeContainerScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeContainerProvider(), child: HomeContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Discover: return AppRoutes.trendingSoundsTabContainerPage; case BottomBarEnum.Inbox: return AppRoutes.allActivityPage; case BottomBarEnum.Profile: return AppRoutes.profileTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.trendingSoundsTabContainerPage: return TrendingSoundsTabContainerPage(); case AppRoutes.allActivityPage: return AllActivityPage(); case AppRoutes.profileTwoPage: return ProfileTwoPage(); default: return DefaultWidget();} } 
 }
