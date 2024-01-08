import 'models/posts_quick_photo_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title_button.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'provider/posts_quick_photo_provider.dart';class PostsQuickPhotoScreen extends StatefulWidget {const PostsQuickPhotoScreen({Key? key}) : super(key: key);

@override PostsQuickPhotoScreenState createState() =>  PostsQuickPhotoScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PostsQuickPhotoProvider(), child: PostsQuickPhotoScreen()); } 
 }
class PostsQuickPhotoScreenState extends State<PostsQuickPhotoScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(color: theme.colorScheme.onErrorContainer, image: DecorationImage(image: AssetImage(ImageConstant.imgPostsQuickPhoto), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 32.v), SizedBox(height: 850.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildFour(context), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 86.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [_buildAppBar(context), SizedBox(height: 20.v), CustomImageView(imagePath: ImageConstant.imgCategoriesRepost, height: 36.adaptSize, width: 36.adaptSize, margin: EdgeInsets.only(right: 2.h), onTap: () {onTapImgCategoriesRepost(context);}), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(right: 10.h), child: Text("lbl_flip".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 22.v), _buildAutoLayoutVertical(context, user: ImageConstant.imgLockOnerrorcontainer, beauty: "lbl_filters".tr), SizedBox(height: 23.v), _buildAutoLayoutVertical(context, user: ImageConstant.imgUserOnerrorcontainer, beauty: "lbl_beauty".tr), SizedBox(height: 22.v), _buildAutoLayoutVertical(context, user: ImageConstant.imgUser, beauty: "lbl_reply".tr), SizedBox(height: 22.v), CustomImageView(imagePath: ImageConstant.imgCategoriesFlash, height: 36.adaptSize, width: 36.adaptSize, margin: EdgeInsets.only(right: 2.h)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(right: 5.h), child: Text("lbl_flash".tr, style: theme.textTheme.labelLarge)), Spacer(), Padding(padding: EdgeInsets.only(right: 31.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomElevatedButton(height: 32.v, width: 97.h, text: "lbl_photo".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgIconlyBoldImage, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGray), CustomElevatedButton(height: 32.v, width: 98.h, text: "lbl_video".tr, margin: EdgeInsets.only(left: 12.h), leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgIconlyBoldVideo, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGray, buttonTextStyle: CustomTextStyles.titleSmallGray500, onPressed: () {onTapVideo(context);})])), SizedBox(height: 16.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 65.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgFrameRed400, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 5.v), Text("lbl_effects".tr, style: theme.textTheme.labelLarge)])), Spacer(flex: 50), Container(height: 80.adaptSize, width: 80.adaptSize, decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.h), border: Border.all(color: theme.colorScheme.onErrorContainer, width: 6.h), gradient: LinearGradient(begin: Alignment(1, 1), end: Alignment(0, 0), colors: [appTheme.deepOrangeA400, appTheme.orange600]))), Spacer(flex: 49), Padding(padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgIconlyBoldUpload, height: 36.adaptSize, width: 36.adaptSize), SizedBox(height: 6.v), Text("lbl_upload".tr, style: theme.textTheme.labelLarge)]))])))])))]))]))))); } 
/// Section Widget
Widget _buildFour(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(decoration: AppDecoration.gradientPrimaryContainerToPrimaryContainer, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 138.v), Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 89.h, vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 9.h, bottom: 7.v), child: Text("lbl_camera".tr, style: CustomTextStyles.titleMediumGray60016)), Spacer(), Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("lbl_quick".tr, style: CustomTextStyles.titleMediumOnErrorContainer16)), Padding(padding: EdgeInsets.only(left: 22.h, bottom: 5.v), child: Text("lbl_templates".tr, style: CustomTextStyles.titleMediumGray60016))]))]))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 32.v, leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgCategoriesXCloseOnerrorcontainer, margin: EdgeInsets.only(left: 24.h, top: 4.v, bottom: 4.v), onTap: () {onTapCategoriesXClose(context);}), centerTitle: true, title: AppbarTitleButton()); } 
/// Common widget
Widget _buildAutoLayoutVertical(BuildContext context, {required String user, required String beauty, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: user, height: 36.adaptSize, width: 36.adaptSize, margin: EdgeInsets.only(right: 2.h)), SizedBox(height: 6.v), Text(beauty, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onErrorContainer))])); } 

/// Navigates to the previous screen.
onTapCategoriesXClose(BuildContext context) { NavigatorService.goBack(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapImgCategoriesRepost(BuildContext context) async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
/// Navigates to the postsQuickVideoScreen when the action is triggered.
onTapVideo(BuildContext context) { NavigatorService.pushNamed(AppRoutes.postsQuickVideoScreen, ); } 
 }
