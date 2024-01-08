import '../gallery_screen/widgets/gallery_item_widget.dart';import 'models/gallery_item_model.dart';import 'models/gallery_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_5_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';import 'provider/gallery_provider.dart';class GalleryScreen extends StatefulWidget {const GalleryScreen({Key? key}) : super(key: key);

@override GalleryScreenState createState() =>  GalleryScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => GalleryProvider(), child: GalleryScreen()); } 
 }
class GalleryScreenState extends State<GalleryScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: Consumer<GalleryProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 141.v, crossAxisCount: 2, mainAxisSpacing: 16.h, crossAxisSpacing: 16.h), physics: BouncingScrollPhysics(), itemCount: provider.galleryModelObj.galleryItemList.length, itemBuilder: (context, index) {GalleryItemModel model = provider.galleryModelObj.galleryItemList[index]; return GalleryItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_gallery_hotel_photos".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 16.v))]); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
