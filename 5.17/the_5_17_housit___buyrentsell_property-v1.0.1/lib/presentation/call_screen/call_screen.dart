import 'models/call_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'provider/call_provider.dart';class CallScreen extends StatefulWidget {const CallScreen({Key? key}) : super(key: key);

@override CallScreenState createState() =>  CallScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CallProvider(), child: CallScreen()); } 
 }
class CallScreenState extends State<CallScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 34.v), Text("lbl_milano".tr, style: CustomTextStyles.headlineSmallBold), SizedBox(height: 16.v), CustomElevatedButton(height: 24.v, width: 49.h, text: "lbl_12_25".tr, buttonStyle: CustomButtonStyles.fillOnPrimaryContainer, buttonTextStyle: CustomTextStyles.labelMediumWhiteA700), Spacer(flex: 51), Container(margin: EdgeInsets.symmetric(horizontal: 91.h), padding: EdgeInsets.all(18.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.circleBorder96), child: Container(height: 156.adaptSize, width: 156.adaptSize, padding: EdgeInsets.all(13.h), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder78), child: CustomImageView(imagePath: ImageConstant.imgShape130x130, height: 130.adaptSize, width: 130.adaptSize, radius: BorderRadius.circular(65.h), alignment: Alignment.center))), Spacer(flex: 48), _buildCallOption(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.fromLTRB(24.h, 3.v, 301.h, 3.v), onTap: () {onTapArrowLeft(context);})); } 
/// Section Widget
Widget _buildCallOption(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 72.h, vertical: 24.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL50), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillWhiteATL25, child: CustomImageView(imagePath: ImageConstant.imgSettingsBlueGray8000150x50)), Padding(padding: EdgeInsets.only(left: 10.h), child: CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillWhiteATL25, child: CustomImageView(imagePath: ImageConstant.imgMusic)))]), SizedBox(height: 20.v), CustomElevatedButton(text: "lbl_end_call".tr, buttonStyle: CustomButtonStyles.fillRedATL35)])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
