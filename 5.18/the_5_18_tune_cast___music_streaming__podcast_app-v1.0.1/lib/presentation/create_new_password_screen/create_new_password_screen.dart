import 'models/create_new_password_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/utils/validation_functions.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_checkbox_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';import 'provider/create_new_password_provider.dart';class CreateNewPasswordScreen extends StatefulWidget {const CreateNewPasswordScreen({Key? key}) : super(key: key);

@override CreateNewPasswordScreenState createState() =>  CreateNewPasswordScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CreateNewPasswordProvider(), child: CreateNewPasswordScreen()); } 
 }

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState();// TODO: implement Actions
 } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Center(child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 20.v), CustomImageView(imagePath: ImageConstant.imgGroup322, height: 250.v, width: 329.h), SizedBox(height: 72.v), Align(alignment: Alignment.centerLeft, child: Text("msg_create_your_new".tr, style: CustomTextStyles.titleMediumMedium)), SizedBox(height: 25.v), Consumer<CreateNewPasswordProvider>(builder: (context, provider, child) {return CustomTextFormField(controller: provider.newpasswordController, hintText: "lbl_new_password".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {provider.changePasswordVisibility();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: provider.isShowPassword, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), Consumer<CreateNewPasswordProvider>(builder: (context, provider, child) {return CustomTextFormField(controller: provider.confirmpasswordController, hintText: "msg_confirm_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 60.v), suffix: InkWell(onTap: () {provider.changePasswordVisibility1();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: provider.isShowPassword1, contentPadding: EdgeInsets.symmetric(vertical: 21.v));}), SizedBox(height: 24.v), _buildRememberme(context)]))))), bottomNavigationBar: _buildContinue(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_create_new_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildRememberme(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Selector<CreateNewPasswordProvider, bool?>(selector: (context, provider) => provider.rememberme, builder: (context, rememberme, child) {return CustomCheckboxButton(alignment: Alignment.centerLeft, text: "lbl_remember_me".tr, value: rememberme, padding: EdgeInsets.symmetric(vertical: 3.v), onChange: (value) {context.read<CreateNewPasswordProvider>().changeCheckBox1(value);});})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 45.v)); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
