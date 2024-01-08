import 'models/forgot_password_filled_type_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_pin_code_text_field.dart';import 'provider/forgot_password_filled_type_provider.dart';class ForgotPasswordFilledTypeScreen extends StatefulWidget {const ForgotPasswordFilledTypeScreen({Key? key}) : super(key: key);

@override ForgotPasswordFilledTypeScreenState createState() =>  ForgotPasswordFilledTypeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ForgotPasswordFilledTypeProvider(), child: ForgotPasswordFilledTypeScreen()); } 
 }
class ForgotPasswordFilledTypeScreenState extends State<ForgotPasswordFilledTypeScreen> {@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.createNewPasswordScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 34.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 18.v), Text("msg_code_has_been_send".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 59.v), Selector<ForgotPasswordFilledTypeProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}), SizedBox(height: 62.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_53".tr, style: CustomTextStyles.bodyLargePrimary), TextSpan(text: "lbl_s".tr, style: theme.textTheme.bodyLarge)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerify(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerify(BuildContext context) { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
