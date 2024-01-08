import '../product_details_screen/widgets/cards_item_widget.dart';import '../product_details_screen/widgets/imageanddetails_item_widget.dart';import '../product_details_screen/widgets/images_item_widget.dart';import '../product_details_screen/widgets/propertydetails_item_widget.dart';import 'dart:async';import 'models/cards_item_model.dart';import 'models/imageanddetails_item_model.dart';import 'models/images_item_model.dart';import 'models/product_details_model.dart';import 'models/propertydetails_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_icon_button.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_radio_button.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_rating_bar.dart';import 'provider/product_details_provider.dart';class ProductDetailsScreen extends StatefulWidget {const ProductDetailsScreen({Key? key}) : super(key: key);

@override ProductDetailsScreenState createState() =>  ProductDetailsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProductDetailsProvider(), child: ProductDetailsScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ProductDetailsScreenState extends State<ProductDetailsScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 13.v), child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 16.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildArrowLeft(context), SizedBox(height: 34.v), _buildDescription(context), SizedBox(height: 31.v), _buildAbout(context), SizedBox(height: 34.v), _buildGallery(context), SizedBox(height: 32.v), _buildLocation(context), SizedBox(height: 32.v), _buildContactToBuyerS(context), SizedBox(height: 34.v), _buildKeyDetails1(context), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_home_facts2".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 13.v), _buildOnMarket1(context), SizedBox(height: 24.v), Divider(indent: 8.h, endIndent: 39.h), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_popular_amenities".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 21.v), _buildBrightness(context), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Row(children: [Text("lbl_all_amenities".tr, style: CustomTextStyles.titleSmallPrimaryBold), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 14.h, bottom: 2.v))])), SizedBox(height: 24.v), Divider(indent: 8.h, endIndent: 39.h), SizedBox(height: 23.v), _buildReviews(context), SizedBox(height: 24.v), Divider(indent: 8.h, endIndent: 39.h), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_sale_tax_history".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 17.v), _buildTabs(context), SizedBox(height: 18.v), _buildNotifyMeWhenThe(context), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_28_12_2021".tr, style: CustomTextStyles.titleSmallBluegray500Medium)), SizedBox(height: 4.v), _buildListedForSale(context), SizedBox(height: 23.v), _buildSchool(context), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Row(children: [Text("lbl_show_4_more".tr, style: CustomTextStyles.titleSmallPrimaryBold), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h, bottom: 2.v))])), SizedBox(height: 16.v), Divider(indent: 8.h, endIndent: 39.h), SizedBox(height: 23.v), _buildClimateRisk(context), SizedBox(height: 14.v), _buildFloodRisk(context), SizedBox(height: 16.v), _buildEnvironmentalRisks(context)]))))])), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return SizedBox(height: 343.adaptSize, width: 343.adaptSize, child: Stack(alignment: Alignment.bottomCenter, children: [Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return CarouselSlider.builder(options: CarouselOptions(height: 343.adaptSize, initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {provider.sliderIndex = index;}), itemCount: provider.productDetailsModelObj.imageanddetailsItemList.length, itemBuilder: (context, index, realIndex) {ImageanddetailsItemModel model = provider.productDetailsModelObj.imageanddetailsItemList[index]; return ImageanddetailsItemWidget(model);});}), Align(alignment: Alignment.bottomCenter, child: Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return Container(height: 3.v, margin: EdgeInsets.only(bottom: 16.v), child: AnimatedSmoothIndicator(activeIndex: provider.sliderIndex, count: provider.productDetailsModelObj.imageanddetailsItemList.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 4, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.gray300.withOpacity(0.6), dotHeight: 3.v, dotWidth: 16.h)));}))])); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_description".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), SizedBox(height: 34.v, child: Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 24.h);}, itemCount: provider.productDetailsModelObj.propertydetailsItemList.length, itemBuilder: (context, index) {PropertydetailsItemModel model = provider.productDetailsModelObj.propertydetailsItemList[index]; return PropertydetailsItemWidget(model);});}))])); } 
/// Section Widget
Widget _buildAbout(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_about".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), SizedBox(width: 327.h, child: Text("msg_casablanca_ground2".tr, maxLines: 4, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumPrimaryContainer_1.copyWith(height: 1.50))), SizedBox(height: 11.v), _buildSeeMore(context, seeMore: "lbl_see_more".tr)])); } 
/// Section Widget
Widget _buildGallery(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_gallery".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), SizedBox(height: 130.v, child: Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 14.h);}, itemCount: provider.productDetailsModelObj.imagesItemList.length, itemBuilder: (context, index) {ImagesItemModel model = provider.productDetailsModelObj.imagesItemList[index]; return ImagesItemWidget(model);});}))])); } 
/// Section Widget
Widget _buildLocation(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_location".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), SizedBox(height: 152.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false))])); } 
/// Section Widget
Widget _buildMessage(BuildContext context) { return CustomElevatedButton(height: 45.v, width: 133.h, text: "lbl_message".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgUserBlueGray500, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL5, buttonTextStyle: CustomTextStyles.titleSmallBluegray500_1); } 
/// Section Widget
Widget _buildPhone(BuildContext context) { return CustomElevatedButton(height: 45.v, width: 133.h, text: "lbl_phone".tr, margin: EdgeInsets.only(left: 12.h), leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgPhoneBlueGray500, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL5, buttonTextStyle: CustomTextStyles.titleSmallBluegray500_1); } 
/// Section Widget
Widget _buildAskAQuestion(BuildContext context) { return CustomElevatedButton(height: 45.v, text: "lbl_ask_a_question".tr, leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgProfile, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillGrayTL5, buttonTextStyle: CustomTextStyles.titleSmallBluegray500_1); } 
/// Section Widget
Widget _buildContactToBuyerS(BuildContext context) { return Container(margin: EdgeInsets.only(left: 8.h, right: 39.h), padding: EdgeInsets.all(23.h), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("msg_contact_to_buyer_s".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(right: 36.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgProfilePic, height: 48.adaptSize, width: 48.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_leslie_alexander".tr, style: CustomTextStyles.titleMediumBold), SizedBox(height: 6.v), Text("msg_rich_capital_properties".tr, style: CustomTextStyles.titleSmallBluegray500Medium)])))])), SizedBox(height: 30.v), Row(children: [_buildMessage(context), _buildPhone(context)]), SizedBox(height: 12.v), _buildAskAQuestion(context)])); } 
/// Section Widget
Widget _buildKeyDetails1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(children: [_buildListPrice(context, listPrice: "lbl_key_details".tr, price: "msg_update_07_07_2022".tr), SizedBox(height: 21.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_price_insights".tr, style: CustomTextStyles.titleMediumBold)), SizedBox(height: 11.v), _buildListPrice(context, listPrice: "lbl_list_price".tr, price: "lbl_3_000".tr), SizedBox(height: 12.v), _buildListPrice(context, listPrice: "msg_est_mo_payment".tr, price: "lbl_15_000".tr), SizedBox(height: 11.v), _buildListPrice(context, listPrice: "lbl_relax_estimate".tr, price: "lbl_3_000".tr), SizedBox(height: 13.v), _buildListPrice(context, listPrice: "lbl_price_sq_ft".tr, price: "lbl".tr)])); } 
/// Section Widget
Widget _buildOnMarket1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(children: [_buildListPrice(context, listPrice: "lbl_on_market".tr, price: "lbl_30_days".tr), SizedBox(height: 11.v), _buildListPrice(context, listPrice: "lbl_community".tr, price: "lbl_san_francisco".tr), SizedBox(height: 11.v), _buildListPrice(context, listPrice: "lbl_country".tr, price: "lbl_san_francisco".tr), SizedBox(height: 11.v), _buildListPrice(context, listPrice: "lbl_mls".tr, price: "lbl_42212314554".tr), SizedBox(height: 12.v), _buildListPrice(context, listPrice: "lbl_built".tr, price: "lbl_1992".tr), SizedBox(height: 13.v), _buildListPrice(context, listPrice: "lbl_lot_size".tr, price: "msg_3_400_square_feet".tr), SizedBox(height: 15.v), _buildSeeMore(context, seeMore: "lbl_see_more".tr)])); } 
/// Section Widget
Widget _buildBrightness(BuildContext context) { return SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 11.h), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [CustomImageView(imagePath: ImageConstant.imgBrightnessPrimarycontainer, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 10.v), Text("lbl_sunning".tr, style: CustomTextStyles.labelLargePrimaryContainerSemiBold)]), Padding(padding: EdgeInsets.only(left: 22.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgSettingsPrimarycontainer, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 9.v), Text("lbl_free_wifi2".tr, style: CustomTextStyles.labelLargePrimaryContainerSemiBold)])), Padding(padding: EdgeInsets.only(left: 18.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgIcon, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 9.v), Text("lbl_restaurant".tr, style: CustomTextStyles.labelLargePrimaryContainerSemiBold)])), Spacer(flex: 47), Column(children: [CustomImageView(imagePath: ImageConstant.imgThumbsUp, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 9.v), Text("lbl_bar".tr, style: CustomTextStyles.labelLargePrimaryContainerSemiBold)]), Spacer(flex: 52), Column(children: [CustomImageView(imagePath: ImageConstant.imgSettingsPrimarycontainer24x24, height: 24.adaptSize, width: 24.adaptSize), SizedBox(height: 9.v), Text("lbl_business".tr, textAlign: TextAlign.center, style: CustomTextStyles.labelLargePrimaryContainerSemiBold)])]))); } 
/// Section Widget
Widget _buildReviews(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(children: [_buildListPrice(context, listPrice: "lbl_reviews".tr, price: "msg_view_all_reviews".tr), SizedBox(height: 14.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(right: 89.h), child: Row(children: [Text("lbl_4_9".tr, style: theme.textTheme.headlineLarge), Expanded(child: Padding(padding: EdgeInsets.only(left: 12.h, top: 13.v, bottom: 11.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 3.v), child: CustomRatingBar(initialRating: 5)), Text("lbl_100_ratings".tr, style: CustomTextStyles.labelLargePrimaryContainer_1)])))]))), SizedBox(height: 6.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_5".tr, style: CustomTextStyles.titleSmallBold), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 7.v), child: Container(height: 8.v, width: 270.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(1.h), child: LinearProgressIndicator(value: 0.4, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(appTheme.yellow700)))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_60".tr, style: CustomTextStyles.bodyMediumReadexProPrimaryContainer))]), SizedBox(height: 3.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_42".tr, style: CustomTextStyles.titleSmallBold), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h, top: 5.v, bottom: 6.v), child: Container(height: 8.v, width: 270.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(1.h), child: LinearProgressIndicator(value: 0.16, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(appTheme.yellow700)))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_20".tr, style: CustomTextStyles.bodyMediumReadexProPrimaryContainer))]), SizedBox(height: 4.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_3".tr, style: CustomTextStyles.titleSmallBold), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 7.v), child: Container(height: 8.v, width: 270.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(1.h), child: LinearProgressIndicator(value: 0.04, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(appTheme.yellow700)))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_10".tr, style: CustomTextStyles.bodyMediumReadexProPrimaryContainer))]), SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(right: 9.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_2".tr, style: CustomTextStyles.titleSmallBold), Expanded(child: Padding(padding: EdgeInsets.only(left: 7.h, top: 5.v, bottom: 6.v), child: Container(height: 8.v, width: 270.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(1.h), child: LinearProgressIndicator(value: 0.02, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(appTheme.yellow700)))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_52".tr, style: CustomTextStyles.bodyMediumReadexProPrimaryContainer))])), SizedBox(height: 4.v), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_13".tr, style: CustomTextStyles.titleSmallBold), Expanded(child: Padding(padding: EdgeInsets.only(left: 9.h, top: 5.v, bottom: 6.v), child: Container(height: 8.v, width: 270.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(1.h)), child: ClipRRect(borderRadius: BorderRadius.circular(1.h), child: LinearProgressIndicator(value: 0.02, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(appTheme.yellow700)))))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_52".tr, style: CustomTextStyles.bodyMediumReadexProPrimaryContainer))])])); } 
/// Section Widget
Widget _buildTabs(BuildContext context) { return Container(margin: EdgeInsets.only(left: 8.h, right: 39.h), padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisSize: MainAxisSize.max, children: [Container(padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 8.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("lbl_sale_history".tr, style: CustomTextStyles.titleSmallBold)])), Padding(padding: EdgeInsets.only(left: 45.h, top: 11.v, bottom: 8.v), child: Text("lbl_tax_history".tr, style: CustomTextStyles.titleSmallBluegray500_1))])); } 
/// Section Widget
Widget _buildNotifyMeWhenThe(BuildContext context) { return Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return Padding(padding: EdgeInsets.only(left: 8.h), child: CustomRadioButton(text: "msg_notify_me_when_the".tr, value: "msg_notify_me_when_the".tr, groupValue: provider.radioGroup, onChange: (value) {provider.changeRadioButton1(value);}));}); } 
/// Section Widget
Widget _buildListedForSale(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("lbl_listed_for_sale".tr, style: CustomTextStyles.titleMediumSemiBold), Padding(padding: EdgeInsets.only(left: 159.h), child: Text("lbl_2_400".tr, style: CustomTextStyles.titleMediumSemiBold))]), SizedBox(height: 5.v), Text("lbl_relax".tr, style: CustomTextStyles.titleSmallPrimary)]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_10_10_2021".tr, style: CustomTextStyles.titleSmallBluegray500Medium), SizedBox(height: 6.v), Text("lbl_price_change".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 3.v), Text("lbl_relax".tr, style: CustomTextStyles.titleSmallPrimary)]), Padding(padding: EdgeInsets.only(left: 165.h, top: 24.v, bottom: 25.v), child: Text("lbl_2_000".tr, style: CustomTextStyles.titleMediumSemiBold))]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_03_04_2020".tr, style: CustomTextStyles.titleSmallBluegray500Medium), SizedBox(height: 4.v), Text("lbl_rented".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 5.v), Text("lbl_relax".tr, style: CustomTextStyles.titleSmallPrimary)]), Padding(padding: EdgeInsets.only(left: 195.h, top: 24.v, bottom: 25.v), child: Text("lbl_1_650".tr, style: CustomTextStyles.titleMediumSemiBold))]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_25_11_2019".tr, style: CustomTextStyles.titleSmallBluegray500Medium), SizedBox(height: 4.v), Text("msg_relisted_active".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 5.v), Text("lbl_relax".tr, style: CustomTextStyles.titleSmallPrimary)]), Padding(padding: EdgeInsets.only(left: 144.h, top: 24.v, bottom: 25.v), child: Text("lbl_1_500".tr, style: CustomTextStyles.titleMediumSemiBold))]), SizedBox(height: 16.v), Divider(), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_09_02_2019".tr, style: CustomTextStyles.titleSmallBluegray500Medium), SizedBox(height: 4.v), Text("lbl_listed_for_sale".tr, style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 5.v), Text("lbl_relax".tr, style: CustomTextStyles.titleSmallPrimary)]), Padding(padding: EdgeInsets.only(left: 163.h, top: 24.v, bottom: 25.v), child: Text("lbl_1_400".tr, style: CustomTextStyles.titleMediumSemiBold))]), SizedBox(height: 16.v), Divider()])); } 
/// Section Widget
Widget _buildSchool(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_school".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 12.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_this_home_is_within2".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "msg_seattle_publics".tr, style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 9.v), Container(width: 300.h, margin: EdgeInsets.only(right: 26.h), child: Text("msg_seattle_s_enrollment".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50))), SizedBox(height: 21.v), Consumer<ProductDetailsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: provider.productDetailsModelObj.cardsItemList.length, itemBuilder: (context, index) {CardsItemModel model = provider.productDetailsModelObj.cardsItemList[index]; return CardsItemWidget(model);});})])); } 
/// Section Widget
Widget _buildClimateRisk(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 65.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_climate_risk".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 16.v), Text("msg_about_climate_risk".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), SizedBox(width: 300.h, child: Text("msg_most_home_have_some".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildFloodRisk(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_flood_risk".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_provided_by".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "msg_first_street_foundation".tr, style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgIconPrimarycontainer24x24, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 15.v, bottom: 19.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_flood_factor".tr, style: CustomTextStyles.labelLargePrimaryContainerBold), SizedBox(height: 5.v), SizedBox(width: 204.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_minimal".tr, style: CustomTextStyles.labelLargePrimaryContainer), TextSpan(text: "lbl2".tr, style: CustomTextStyles.bodySmallPrimaryContainer), TextSpan(text: "msg_unlikely_to_flood".tr, style: theme.textTheme.bodySmall)]), textAlign: TextAlign.left))]))), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 38.h, top: 15.v, bottom: 19.v))]))])); } 
/// Section Widget
Widget _buildEnvironmentalRisks(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 8.h, right: 39.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_environmental_risks".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_provided_by".tr, style: theme.textTheme.bodyMedium), TextSpan(text: "lbl_climatecheck".tr, style: CustomTextStyles.titleSmallPrimary_1)]), textAlign: TextAlign.left)), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgIcon24x24, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 15.v, bottom: 19.v)), Padding(padding: EdgeInsets.only(left: 16.h, bottom: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_storm_risk".tr, style: CustomTextStyles.labelLargePrimaryContainerBold)), SizedBox(height: 5.v), SizedBox(width: 199.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_very_high".tr, style: CustomTextStyles.labelLargePrimaryContainer), TextSpan(text: "lbl2".tr, style: CustomTextStyles.bodySmallPrimaryContainer), TextSpan(text: "msg_24_storms_expected".tr, style: theme.textTheme.bodySmall)]), textAlign: TextAlign.left))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 43.h, top: 15.v, bottom: 19.v))])), SizedBox(height: 12.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 13.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgIcon1, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 14.v, bottom: 18.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 14.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_drought_risk".tr, style: CustomTextStyles.labelLargePrimaryContainerBold), SizedBox(height: 4.v), SizedBox(width: 217.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_moderate".tr, style: CustomTextStyles.bodySmallPrimaryContainer), TextSpan(text: "msg_water_stress_expected".tr, style: theme.textTheme.bodySmall)]), textAlign: TextAlign.left))]))), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 25.h, top: 14.v, bottom: 18.v))])), SizedBox(height: 12.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgBrightnessPrimarycontainer, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 15.v, bottom: 19.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 16.h, bottom: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_heat_risk".tr, style: CustomTextStyles.labelLargePrimaryContainerBold), SizedBox(height: 5.v), SizedBox(width: 211.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_relatively".tr, style: CustomTextStyles.labelLargePrimaryContainer), TextSpan(text: "lbl2".tr, style: CustomTextStyles.bodySmallPrimaryContainer), TextSpan(text: "msg_28_hot_days_expected".tr, style: theme.textTheme.bodySmall)]), textAlign: TextAlign.left))]))), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 31.h, top: 15.v, bottom: 19.v))])), SizedBox(height: 12.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgIcon2, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 15.v, bottom: 19.v)), Padding(padding: EdgeInsets.only(left: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_fire_risk".tr, style: CustomTextStyles.labelLargePrimaryContainerBold), SizedBox(height: 5.v), SizedBox(width: 170.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_relatively_low".tr, style: CustomTextStyles.labelLargePrimaryContainer), TextSpan(text: "lbl2".tr, style: CustomTextStyles.bodySmallPrimaryContainer), TextSpan(text: "msg_2_2_of_land_expected".tr, style: theme.textTheme.bodySmall)]), textAlign: TextAlign.left))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 73.h, top: 15.v, bottom: 19.v))]))])); } 
/// Section Widget
Widget _buildScheduleTour(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 48.v, text: "lbl_schedule_tour".tr, margin: EdgeInsets.only(left: 12.h), onPressed: () {onTapScheduleTour(context);})); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 13.v), decoration: AppDecoration.outlineBlueGrayF, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildListPrice(context, listPrice: "lbl_price2".tr, price: "lbl_1_940_00".tr), Padding(padding: EdgeInsets.only(top: 15.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: CustomIconButton(height: 44.adaptSize, width: 44.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.outlineGrayTL18, child: CustomImageView(imagePath: ImageConstant.imgHeart))), _buildScheduleTour(context)]))])); } 
/// Common widget
Widget _buildListPrice(BuildContext context, {required String listPrice, required String price, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(listPrice, style: CustomTextStyles.bodyMediumPrimaryContainer_1.copyWith(color: theme.colorScheme.primaryContainer)), Padding(padding: EdgeInsets.only(left: 220.h), child: Text(price, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer)))]); } 
/// Common widget
Widget _buildSeeMore(BuildContext context, {required String seeMore, }) { return Row(children: [Text(seeMore, style: CustomTextStyles.titleSmallPrimaryBold.copyWith(color: theme.colorScheme.primary)), CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h, bottom: 2.v))]); } 
/// Navigates to the pickDateScreen when the action is triggered.
onTapScheduleTour(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pickDateScreen, ); } 
 }
