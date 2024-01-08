import 'models/profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/utils/validation_functions.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_elevated_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_outlined_button.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_phone_number.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/custom_text_form_field.dart';import 'provider/profile_provider.dart';class ProfileScreen extends StatefulWidget {const ProfileScreen({Key? key}) : super(key: key);

@override ProfileScreenState createState() =>  ProfileScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProfileProvider(), child: ProfileScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ProfileScreenState extends State<ProfileScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.homeContainerScreen, );NavigatorService.pushNamed(AppRoutes.createNewPinScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 3.v), SizedBox(height: 140.adaptSize, width: 140.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.h), alignment: Alignment.center), CustomIconButton(height: 35.adaptSize, width: 35.adaptSize, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgEditOnprimarycontainer))])), SizedBox(height: 24.v), _buildFullName(context), SizedBox(height: 20.v), _buildName(context), SizedBox(height: 20.v), _buildDateOfBirth(context), SizedBox(height: 20.v), _buildEmail(context), SizedBox(height: 20.v), _buildPhoneNumber(context), Spacer(), _buildFrame(context)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_fill_your_profile".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Selector<ProfileProvider, TextEditingController?>(selector: (context, provider) => provider.fullNameController, builder: (context, fullNameController, child) {return CustomTextFormField(controller: fullNameController, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Selector<ProfileProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "lbl_nick_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildDateOfBirth(BuildContext context) { return Selector<ProfileProvider, TextEditingController?>(selector: (context, provider) => provider.dateOfBirthController, builder: (context, dateOfBirthController, child) {return CustomTextFormField(controller: dateOfBirthController, hintText: "lbl_date_of_birth".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIconsGray50020x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Selector<ProfileProvider, TextEditingController?>(selector: (context, provider) => provider.emailController, builder: (context, emailController, child) {return CustomTextFormField(controller: emailController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 20.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIcons20x20, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 60.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 21.v, bottom: 21.v));}); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Consumer<ProfileProvider>(builder: (context, provider, child) {return CustomPhoneNumber(country: provider.selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: provider.phoneNumberController, onTap: (Country value) {context.read<ProfileProvider>().changeCountry(value);});}); } 
/// Section Widget
Widget _buildSkip(BuildContext context) { return Expanded(child: CustomOutlinedButton(text: "lbl_skip".tr, margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip(context);})); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue(context);})); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSkip(context), _buildContinue(context)]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the createNewPinScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.createNewPinScreen, ); } 
 }
