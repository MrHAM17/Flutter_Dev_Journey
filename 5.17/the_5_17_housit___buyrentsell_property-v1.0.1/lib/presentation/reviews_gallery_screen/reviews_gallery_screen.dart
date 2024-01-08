import 'models/reviews_gallery_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_rating_bar.dart';import 'provider/reviews_gallery_provider.dart';class ReviewsGalleryScreen extends StatefulWidget {const ReviewsGalleryScreen({Key? key}) : super(key: key);

@override ReviewsGalleryScreenState createState() =>  ReviewsGalleryScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewsGalleryProvider(), child: ReviewsGalleryScreen()); } 
 }
class ReviewsGalleryScreenState extends State<ReviewsGalleryScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgReviewsGallery), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 24.h), child: CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(16.h), onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))), Spacer(), Column(children: [_buildRefresh(context), SizedBox(height: 55.v), _buildTwentyNine(context)])]))))); } 
/// Section Widget
Widget _buildRefresh(BuildContext context) { return SizedBox(width: double.maxFinite, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 83.v, width: 42.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 30.v), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderLR18), child: CustomImageView(imagePath: ImageConstant.imgRefresh, height: 22.v, width: 23.h, alignment: Alignment.centerLeft)), Container(height: 83.v, width: 42.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 30.v), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL18), child: CustomImageView(imagePath: ImageConstant.imgForward, height: 22.v, width: 23.h, alignment: Alignment.centerRight))])); } 
/// Section Widget
Widget _buildTwentyNine(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), decoration: AppDecoration.gradientOnPrimaryToBlueGray, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Container(width: 159.h, margin: EdgeInsets.only(top: 190.v, bottom: 1.v), padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder35), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [CustomImageView(imagePath: ImageConstant.imgShape28, height: 50.adaptSize, width: 50.adaptSize, radius: BorderRadius.circular(25.h)), Padding(padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_samuel_ella".tr, style: theme.textTheme.labelLarge), SizedBox(height: 5.v), CustomRatingBar(initialRating: 0, itemCount: 4)]))])), Padding(padding: EdgeInsets.only(top: 56.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgShape60, height: 63.v, width: 58.h, radius: BorderRadius.circular(18.h)), SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgShape59, height: 63.v, width: 58.h, radius: BorderRadius.circular(18.h)), SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgShape58, height: 63.v, width: 58.h, radius: BorderRadius.circular(18.h))]))])); } 

/// Navigates to the previous screen.
onTapBtnArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
