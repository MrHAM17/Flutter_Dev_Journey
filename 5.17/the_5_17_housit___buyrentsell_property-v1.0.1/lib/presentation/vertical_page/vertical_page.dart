import '../vertical_page/widgets/vertical_item_widget.dart';import 'models/vertical_item_model.dart';import 'models/vertical_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'provider/vertical_provider.dart';class VerticalPage extends StatefulWidget {const VerticalPage({Key? key}) : super(key: key);

@override VerticalPageState createState() =>  VerticalPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => VerticalProvider(), child: VerticalPage()); } 
 }
class VerticalPageState extends State<VerticalPage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(children: [_buildItemHeader(context), SizedBox(height: 20.v), _buildVertical(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: AppbarSubtitle(text: "lbl_my_favorite".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgThumbsUp, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 3.v))]); } 
/// Section Widget
Widget _buildItemHeader(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 11.v, bottom: 6.v), child: Text("lbl_3".tr, style: CustomTextStyles.titleMediumBold)), Padding(padding: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 8.v), child: Text("lbl_estates".tr, style: CustomTextStyles.titleMediumMedium)), Spacer(), Container(width: 93.h, padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [GestureDetector(onTap: () {onTapButtonShow(context);}, child: Container(height: 24.v, width: 36.h, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: CustomImageView(imagePath: ImageConstant.imgGrid, height: 12.adaptSize, width: 12.adaptSize, alignment: Alignment.center))), CustomImageView(imagePath: ImageConstant.imgIconHorizontal, height: 12.adaptSize, width: 12.adaptSize, margin: EdgeInsets.symmetric(vertical: 6.v))]))]); } 
/// Section Widget
Widget _buildVertical(BuildContext context) { return Consumer<VerticalProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 232.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.verticalModelObj.verticalItemList.length, itemBuilder: (context, index) {VerticalItemModel model = provider.verticalModelObj.verticalItemList[index]; return VerticalItemWidget(model);});}); } 
/// Navigates to the horizontalScreen when the action is triggered.
onTapButtonShow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.horizontalScreen, ); } 
 }
