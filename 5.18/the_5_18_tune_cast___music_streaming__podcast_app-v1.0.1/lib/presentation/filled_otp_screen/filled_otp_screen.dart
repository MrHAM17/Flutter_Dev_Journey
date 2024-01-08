import 'models/filled_otp_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_pin_code_text_field.dart';import 'provider/filled_otp_provider.dart';class FilledOtpScreen extends StatefulWidget {const FilledOtpScreen({Key? key}) : super(key: key);

@override FilledOtpScreenState createState() =>  FilledOtpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FilledOtpProvider(), child: FilledOtpScreen()); } 
 }
class FilledOtpScreenState extends State<FilledOtpScreen> {@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.createNewPasswordScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 16.v), Text("msg_code_has_been_sent".tr, style: CustomTextStyles.titleMediumMedium), SizedBox(height: 61.v), Selector<FilledOtpProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}), SizedBox(height: 61.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: CustomTextStyles.titleMediumMedium_1), TextSpan(text: "lbl_53".tr, style: CustomTextStyles.titleMediumOnPrimaryContainerMedium), TextSpan(text: "lbl_s".tr, style: CustomTextStyles.titleMediumMedium_1)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerify(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerify(BuildContext context) { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 45.v), onPressed: () {onTapVerify(context);}); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerify(BuildContext context) { NavigatorService.pushNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
