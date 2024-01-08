import 'models/posts_templates_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';import 'provider/posts_templates_provider.dart';class PostsTemplatesScreen extends StatefulWidget {const PostsTemplatesScreen({Key? key}) : super(key: key);

@override PostsTemplatesScreenState createState() =>  PostsTemplatesScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PostsTemplatesProvider(), child: PostsTemplatesScreen()); } 
 }
class PostsTemplatesScreenState extends State<PostsTemplatesScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 17.v), Text("lbl_oil_painting".tr, style: CustomTextStyles.headlineLargeOnErrorContainer), SizedBox(height: 7.v), Text("msg_please_upload_1".tr, style: CustomTextStyles.titleMediumOnErrorContainerMedium), SizedBox(height: 23.v), CustomImageView(imagePath: ImageConstant.imgImage500x330, height: 500.v, width: 330.h, radius: BorderRadius.circular(24.h)), SizedBox(height: 25.v), Text("lbl_1_168".tr, style: CustomTextStyles.titleSmallOnErrorContainer), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_upload_photos".tr, margin: EdgeInsets.symmetric(horizontal: 49.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapUploadPhotos(context);}), SizedBox(height: 16.v), _buildAutoLayoutHorizontal(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 72.v, leadingWidth: 427.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVectorOnerrorcontainer11x11, margin: EdgeInsets.fromLTRB(30.h, 22.v, 386.h, 22.v))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 17.v), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("lbl_camera".tr, style: CustomTextStyles.titleMediumGray60016)), Padding(padding: EdgeInsets.only(left: 20.h, bottom: 7.v), child: Text("lbl_quick".tr, style: CustomTextStyles.titleMediumGray60016)), Padding(padding: EdgeInsets.only(left: 20.h, bottom: 5.v), child: Text("lbl_templates".tr, style: CustomTextStyles.titleMediumOnErrorContainer16))])); } 
/// Navigates to the postsAddSoundsTabContainerScreen when the action is triggered.
onTapUploadPhotos(BuildContext context) { NavigatorService.pushNamed(AppRoutes.postsAddSoundsTabContainerScreen, ); } 
 }
