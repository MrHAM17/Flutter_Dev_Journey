import '../review_empty_screen/widgets/cardlist_item_widget.dart';import 'models/cardlist_item_model.dart';import 'models/review_empty_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';import 'provider/review_empty_provider.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/review_select_voucher_bottomsheet/review_select_voucher_bottomsheet.dart';class ReviewEmptyScreen extends StatefulWidget {const ReviewEmptyScreen({Key? key}) : super(key: key);

@override ReviewEmptyScreenState createState() =>  ReviewEmptyScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewEmptyProvider(), child: ReviewEmptyScreen()); } 
 }
class ReviewEmptyScreenState extends State<ReviewEmptyScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 24.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEstatesCardTransaction(context), SizedBox(height: 37.v), _buildPeriod(context), SizedBox(height: 37.v), _buildNote(context), SizedBox(height: 39.v), Text("lbl_payment_method".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), _buildCardList(context), SizedBox(height: 37.v), _buildItemHeader(context), SizedBox(height: 55.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, margin: EdgeInsets.only(left: 114.h))]))))])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "msg_transaction_review".tr)); } 
/// Section Widget
Widget _buildEstatesCardTransaction(BuildContext context) { return Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 140.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape20, height: 140.v, width: 168.h, radius: BorderRadius.circular(18.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 75.v), CustomElevatedButton(height: 24.v, width: 72.h, text: "lbl_apartment".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.fromLTRB(16.h, 52.v, 9.h, 8.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 12.adaptSize, width: 12.adaptSize), Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))]), SizedBox(height: 18.v), CustomElevatedButton(height: 50.v, width: 94.h, text: "lbl_rent".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 18.v, width: 15.h)), buttonStyle: CustomButtonStyles.fillWhiteATL25, buttonTextStyle: theme.textTheme.labelMedium!, alignment: Alignment.centerRight)]))])); } 
/// Section Widget
Widget _buildPeriod(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_period".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 23.h), child: Row(children: [Selector<ReviewEmptyProvider, TextEditingController?>(selector: (context, provider) => provider.formDateEmptyController, builder: (context, formDateEmptyController, child) {return CustomTextFormField(width: 158.h, controller: formDateEmptyController, hintText: "lbl_check_in".tr, hintStyle: CustomTextStyles.labelLargeOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 27.v, right: 30.h, bottom: 27.v));}), Padding(padding: EdgeInsets.only(left: 11.h), child: Selector<ReviewEmptyProvider, TextEditingController?>(selector: (context, provider) => provider.formDateEmptyController1, builder: (context, formDateEmptyController1, child) {return CustomTextFormField(width: 158.h, controller: formDateEmptyController1, hintText: "lbl_check_out".tr, hintStyle: CustomTextStyles.labelLargeOnPrimaryContainer, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 27.v, right: 30.h, bottom: 27.v));}))]))]); } 
/// Section Widget
Widget _buildNote(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_note_for_owner".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 24.h), child: Selector<ReviewEmptyProvider, TextEditingController?>(selector: (context, provider) => provider.televisionController, builder: (context, televisionController, child) {return CustomTextFormField(controller: televisionController, hintText: "msg_write_your_note".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 25.v, 10.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgTelevision, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 70.v), contentPadding: EdgeInsets.only(top: 26.v, right: 30.h, bottom: 26.v));}))]); } 
/// Section Widget
Widget _buildCardList(BuildContext context) { return SizedBox(height: 180.v, child: Consumer<ReviewEmptyProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: provider.reviewEmptyModelObj.cardlistItemList.length, itemBuilder: (context, index) {CardlistItemModel model = provider.reviewEmptyModelObj.cardlistItemList[index]; return CardlistItemWidget(model);});})); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_have_a_voucher".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_click_in_here".tr, style: CustomTextStyles.labelLargePrimary))])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ReviewSelectVoucherBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapNext(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ReviewSelectVoucherBottomsheet.builder(context),isScrollControlled: true); } 
 }
