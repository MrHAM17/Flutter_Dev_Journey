import '../profile_details_one_screen/widgets/profiledetailsone_item_widget.dart';import 'models/profile_details_one_model.dart';import 'models/profiledetailsone_item_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'provider/profile_details_one_provider.dart';class ProfileDetailsOneScreen extends StatefulWidget {const ProfileDetailsOneScreen({Key? key}) : super(key: key);

@override ProfileDetailsOneScreenState createState() =>  ProfileDetailsOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProfileDetailsOneProvider(), child: ProfileDetailsOneScreen()); } 
 }
class ProfileDetailsOneScreenState extends State<ProfileDetailsOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 31.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgEllipse6, height: 250.adaptSize, width: 250.adaptSize, radius: BorderRadius.circular(125.h)), SizedBox(height: 22.v), Text("lbl_andrew_ainsley".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 16.v), CustomOutlinedButton(height: 45.v, width: 138.h, text: "lbl_edit_profile".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumPrimary_1, onPressed: () {onTapEditProfile(context);}), SizedBox(height: 20.v), Divider(), SizedBox(height: 19.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 2.v), child: Column(children: [Text("lbl_2_739".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 8.v), Text("lbl_followers".tr, style: CustomTextStyles.titleMediumGray70001Medium)])), Padding(padding: EdgeInsets.only(left: 70.h), child: Column(children: [Text("lbl_347".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 11.v), Text("lbl_following".tr, style: CustomTextStyles.titleMediumGray70001Medium)]))]), SizedBox(height: 19.v), Divider(), SizedBox(height: 30.v), _buildPlaylists(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "lbl_profile".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyCurvedEdit, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildPlaylists(BuildContext context) { return Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_playlists".tr, style: theme.textTheme.headlineSmall)), Padding(padding: EdgeInsets.only(bottom: 10.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16))]), SizedBox(height: 21.v), SizedBox(height: 248.v, child: Consumer<ProfileDetailsOneProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: provider.profileDetailsOneModelObj.profiledetailsoneItemList.length, itemBuilder: (context, index) {ProfiledetailsoneItemModel model = provider.profileDetailsOneModelObj.profiledetailsoneItemList[index]; return ProfiledetailsoneItemWidget(model);});}))]); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapEditProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
 }
