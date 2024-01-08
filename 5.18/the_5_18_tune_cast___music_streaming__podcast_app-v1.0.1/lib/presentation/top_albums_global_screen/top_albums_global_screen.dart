import '../top_albums_global_screen/widgets/topalbumsglobal2_item_widget.dart';import 'models/top_albums_global_model.dart';import 'models/topalbumsglobal2_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'provider/top_albums_global_provider.dart';class TopAlbumsGlobalScreen extends StatefulWidget {const TopAlbumsGlobalScreen({Key? key}) : super(key: key);

@override TopAlbumsGlobalScreenState createState() =>  TopAlbumsGlobalScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => TopAlbumsGlobalProvider(), child: TopAlbumsGlobalScreen()); } 
 }
class TopAlbumsGlobalScreenState extends State<TopAlbumsGlobalScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(children: [_buildPrice(context), SizedBox(height: 18.v), Text("msg_top_albums_global2".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 12.v), Text("msg_the_most_played".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 14.v), Text("msg_by_hearme_12_24_2022".tr, style: CustomTextStyles.titleSmallGray70001), SizedBox(height: 23.v), Divider(), SizedBox(height: 23.v), _buildTopAlbumsGlobal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOutlineArrow, margin: EdgeInsets.fromLTRB(24.h, 11.v, 376.h, 11.v), onTap: () {onTapImage(context);})); } 
/// Section Widget
Widget _buildPrice(BuildContext context) { return SizedBox(height: 184.v, width: 380.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage184x380, height: 184.v, width: 380.h, radius: BorderRadius.circular(28.h), alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(width: 98.h, child: Text("msg_top_albums_global".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallWhiteA700.copyWith(height: 1.20))))])); } 
/// Section Widget
Widget _buildTopAlbumsGlobal(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h), child: Consumer<TopAlbumsGlobalProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.topAlbumsGlobalModelObj.topalbumsglobal2ItemList.length, itemBuilder: (context, index) {Topalbumsglobal2ItemModel model = provider.topAlbumsGlobalModelObj.topalbumsglobal2ItemList[index]; return Topalbumsglobal2ItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
 }
