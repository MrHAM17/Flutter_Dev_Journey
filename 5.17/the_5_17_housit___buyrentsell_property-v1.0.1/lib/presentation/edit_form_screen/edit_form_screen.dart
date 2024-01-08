import '../edit_form_screen/widgets/layout15_item_widget.dart';import '../edit_form_screen/widgets/layout17_item_widget.dart';import '../edit_form_screen/widgets/layout19_item_widget.dart';import '../edit_form_screen/widgets/layout21_item_widget.dart';import '../edit_form_screen/widgets/layout22_item_widget.dart';import '../edit_form_screen/widgets/seventy_item_widget.dart';import '../edit_form_screen/widgets/shape_item_widget.dart';import 'dart:async';import 'models/edit_form_model.dart';import 'models/layout15_item_model.dart';import 'models/layout17_item_model.dart';import 'models/layout19_item_model.dart';import 'models/layout21_item_model.dart';import 'models/layout22_item_model.dart';import 'models/seventy_item_model.dart';import 'models/shape_item_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';import 'provider/edit_form_provider.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/edit_success_bottomsheet/edit_success_bottomsheet.dart';class EditFormScreen extends StatefulWidget {const EditFormScreen({Key? key}) : super(key: key);

@override EditFormScreenState createState() =>  EditFormScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => EditFormProvider(), child: EditFormScreen()); } 
 }

// ignore_for_file: must_be_immutable
class EditFormScreenState extends State<EditFormScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 17.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 23.h, bottom: 5.v), child: Column(children: [_buildEstatesCardWide(context), SizedBox(height: 39.v), _buildListingTitle(context), SizedBox(height: 39.v), _buildListingType(context), SizedBox(height: 38.v), _buildPropertyCategory(context), SizedBox(height: 36.v), _buildLocation(context), SizedBox(height: 39.v), _buildGallery(context), SizedBox(height: 37.v), _buildSellPrice(context), SizedBox(height: 37.v), _buildRentPrice(context), SizedBox(height: 41.v), _buildPropertyFeatures(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_total_rooms".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 16.v), _buildWidget(context), SizedBox(height: 39.v), _buildEnvironment(context)]))))])), bottomNavigationBar: _buildUpdate(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_edit_listing".tr)); } 
/// Section Widget
Widget _buildEstatesCardWide(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Container(margin: EdgeInsets.only(right: 24.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Row(mainAxisSize: MainAxisSize.max, children: [SizedBox(height: 104.v, width: 168.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgShape36, height: 104.v, width: 168.h, radius: BorderRadius.circular(15.h), alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillWhiteATL121, child: CustomImageView(imagePath: ImageConstant.imgFavoriteRedA200)), SizedBox(height: 39.v), CustomElevatedButton(height: 24.v, width: 56.h, text: "lbl_house".tr, leftIcon: Container(margin: EdgeInsets.only(right: 6.h), child: CustomImageView(imagePath: ImageConstant.imgClose, height: 13.v, width: 11.h)), buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8, buttonTextStyle: CustomTextStyles.labelSmallGray100)])))])), Padding(padding: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 14.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 66.h, child: Text("msg_schoolview_house".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.labelLarge!.copyWith(height: 1.50))), SizedBox(height: 8.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgSignalOrange300, height: 9.adaptSize, width: 9.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("lbl_4_2".tr, style: CustomTextStyles.labelSmallBold))]), SizedBox(height: 6.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 9.adaptSize, width: 9.adaptSize), Padding(padding: EdgeInsets.only(left: 2.h), child: Text("msg_jakarta_indonesia".tr, style: theme.textTheme.labelSmall))])]))]))); } 
/// Section Widget
Widget _buildListingTitle(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_listing_title".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 23.h), child: Selector<EditFormProvider, TextEditingController?>(selector: (context, provider) => provider.formPasswordController, builder: (context, formPasswordController, child) {return CustomTextFormField(controller: formPasswordController, hintText: "msg_schoolview_house".tr, hintStyle: theme.textTheme.labelLarge!, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgHomeBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v));}))])); } 
/// Section Widget
Widget _buildListingType(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_listing_type".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), Consumer<EditFormProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(provider.editFormModelObj.layout15ItemList.length, (index) {Layout15ItemModel model = provider.editFormModelObj.layout15ItemList[index]; return Layout15ItemWidget(model, onSelectedChipView1: (value) {provider.onSelectedChipView1(index, value);});}));})]); } 
/// Section Widget
Widget _buildPropertyCategory(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_property_category".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Consumer<EditFormProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(provider.editFormModelObj.layout17ItemList.length, (index) {Layout17ItemModel model = provider.editFormModelObj.layout17ItemList[index]; return Layout17ItemWidget(model, onSelectedChipView2: (value) {provider.onSelectedChipView2(index, value);});}));})])); } 
/// Section Widget
Widget _buildLocation(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_location".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(right: 34.h), child: Row(children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedinBlueGray60050x50)), Expanded(child: Container(width: 250.h, margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 5.v), child: Text("msg_jl_gerungsari".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))))])), SizedBox(height: 20.v), Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 200.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 200.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 112.h, vertical: 16.v), decoration: AppDecoration.fillWhiteA, child: Text("msg_select_on_the_map".tr, style: CustomTextStyles.bodySmallBluegray80001_2))), CustomImageView(imagePath: ImageConstant.imgPinRealEstate, height: 51.v, width: 34.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 40.v, right: 118.h))])))])); } 
/// Section Widget
Widget _buildGallery(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_listing_photos".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 23.h), child: Consumer<EditFormProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 162.v, crossAxisCount: 2, mainAxisSpacing: 9.h, crossAxisSpacing: 9.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.editFormModelObj.shapeItemList.length, itemBuilder: (context, index) {ShapeItemModel model = provider.editFormModelObj.shapeItemList[index]; return ShapeItemWidget(model);});}))])); } 
/// Section Widget
Widget _buildSellPrice(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_sell_price".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Container(margin: EdgeInsets.only(right: 23.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text("lbl_150_000".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize)]))])); } 
/// Section Widget
Widget _buildRentPrice(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_rent_price".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Container(margin: EdgeInsets.only(right: 23.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(top: 6.v), child: Text("lbl_320".tr, style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(left: 2.h, top: 9.v, bottom: 2.v), child: Text("lbl_month".tr, style: CustomTextStyles.labelMediumSemiBold_1)), Spacer(), CustomImageView(imagePath: ImageConstant.imgIconoirmail, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(top: 1.v))])), SizedBox(height: 15.v), Consumer<EditFormProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(provider.editFormModelObj.layout19ItemList.length, (index) {Layout19ItemModel model = provider.editFormModelObj.layout19ItemList[index]; return Layout19ItemWidget(model, onSelectedChipView3: (value) {provider.onSelectedChipView3(index, value);});}));})])); } 
/// Section Widget
Widget _buildPropertyFeatures(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_property_features".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Padding(padding: EdgeInsets.only(right: 23.h), child: Consumer<EditFormProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: provider.editFormModelObj.layout21ItemList.length, itemBuilder: (context, index) {Layout21ItemModel model = provider.editFormModelObj.layout21ItemList[index]; return Layout21ItemWidget(model);});}))])); } 
/// Section Widget
Widget _buildWidget(BuildContext context) { return SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: Consumer<EditFormProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 15.v, spacing: 15.h, children: List<Widget>.generate(provider.editFormModelObj.layout22ItemList.length, (index) {Layout22ItemModel model = provider.editFormModelObj.layout22ItemList[index]; return Layout22ItemWidget(model, onSelectedChipView4: (value) {provider.onSelectedChipView4(index, value);});}));}))); } 
/// Section Widget
Widget _buildEnvironment(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_environment_facilities".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 16.v), Consumer<EditFormProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 10.v, spacing: 10.h, children: List<Widget>.generate(provider.editFormModelObj.seventyItemList.length, (index) {SeventyItemModel model = provider.editFormModelObj.seventyItemList[index]; return SeventyItemWidget(model, onSelectedChipView5: (value) {provider.onSelectedChipView5(index, value);});}));})])); } 
/// Section Widget
Widget _buildUpdate(BuildContext context) { return CustomElevatedButton(text: "lbl_update".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), onPressed: () {onTapUpdate(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [EditSuccessBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapUpdate(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>EditSuccessBottomsheet.builder(context),isScrollControlled: true); } 
 }
