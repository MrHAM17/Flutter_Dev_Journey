import 'models/privacy_policy_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/appbar_title.dart';import 'package:the_5_16_tikpik___short_video__social_networking/widgets/app_bar/custom_app_bar.dart';import 'provider/privacy_policy_provider.dart';class PrivacyPolicyScreen extends StatefulWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

@override PrivacyPolicyScreenState createState() =>  PrivacyPolicyScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PrivacyPolicyProvider(), child: PrivacyPolicyScreen()); } 
 }
class PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 6.v), Text("msg_1_types_of_data".tr, style: theme.textTheme.titleLarge), SizedBox(height: 23.v), SizedBox(width: 377.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 8, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40))), SizedBox(height: 24.v), Text("msg_2_use_of_your_personal".tr, style: theme.textTheme.titleLarge), SizedBox(height: 25.v), SizedBox(width: 380.h, child: Text("msg_magna_etiam_tempor".tr, maxLines: 10, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40))), SizedBox(height: 24.v), Text("msg_3_disclosure_of".tr, style: theme.textTheme.titleLarge), SizedBox(height: 25.v), SizedBox(width: 375.h, child: Text("msg_consequat_id_porta".tr, maxLines: 13, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer.copyWith(height: 1.40)))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_privacy_policy".tr, margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
