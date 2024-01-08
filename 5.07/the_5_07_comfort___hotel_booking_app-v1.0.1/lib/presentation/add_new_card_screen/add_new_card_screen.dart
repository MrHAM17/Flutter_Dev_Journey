import 'models/add_new_card_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/custom_text_form_field.dart';import 'provider/add_new_card_provider.dart';class AddNewCardScreen extends StatefulWidget {const AddNewCardScreen({Key? key}) : super(key: key);

@override AddNewCardScreenState createState() =>  AddNewCardScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddNewCardProvider(), child: AddNewCardScreen()); } 
 }
class AddNewCardScreenState extends State<AddNewCardScreen> {@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.cardAddedScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgCard1, height: 240.v, width: 380.h), SizedBox(height: 28.v), _buildName(context), SizedBox(height: 28.v), _buildNumber(context), SizedBox(height: 28.v), _buildExpiryAndCvvNumber(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAddNewCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Selector<AddNewCardProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "lbl_daniel_austin".tr);}); } 
/// Section Widget
Widget _buildNumber(BuildContext context) { return Selector<AddNewCardProvider, TextEditingController?>(selector: (context, provider) => provider.numberController, builder: (context, numberController, child) {return CustomTextFormField(controller: numberController, hintText: "msg_6373_2728_4797_4679".tr);}); } 
/// Section Widget
Widget _buildExpiryDate(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: Selector<AddNewCardProvider, TextEditingController?>(selector: (context, provider) => provider.expiryDateController, builder: (context, expiryDateController, child) {return CustomTextFormField(controller: expiryDateController, hintText: "lbl_02_30".tr);}))); } 
/// Section Widget
Widget _buildCvv(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: Selector<AddNewCardProvider, TextEditingController?>(selector: (context, provider) => provider.cvvController, builder: (context, cvvController, child) {return CustomTextFormField(controller: cvvController, hintText: "lbl_190".tr, textInputAction: TextInputAction.done);}))); } 
/// Section Widget
Widget _buildExpiryAndCvvNumber(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpiryDate(context), _buildCvv(context)]); } 
/// Section Widget
Widget _buildAddNewCard(BuildContext context) { return CustomElevatedButton(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
