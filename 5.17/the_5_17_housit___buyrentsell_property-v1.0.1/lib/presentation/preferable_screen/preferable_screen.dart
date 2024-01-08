import '../preferable_screen/widgets/preferable_item_widget.dart';import 'models/preferable_item_model.dart';import 'models/preferable_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'provider/preferable_provider.dart';class PreferableScreen extends StatefulWidget {const PreferableScreen({Key? key}) : super(key: key);

@override PreferableScreenState createState() =>  PreferableScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PreferableProvider(), child: PreferableScreen()); } 
 }
class PreferableScreenState extends State<PreferableScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 50.v), Container(width: 254.h, margin: EdgeInsets.only(left: 24.h), child: Text("msg_select_your_preferable_real".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.50))), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("msg_you_can_edit_this".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 54.v), SizedBox(height: 656.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [_buildPreferable(context), _buildNext(context)]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildPreferable(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<PreferableProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 213.v, crossAxisCount: 2, mainAxisSpacing: 7.h, crossAxisSpacing: 7.h), physics: BouncingScrollPhysics(), itemCount: provider.preferableModelObj.preferableItemList.length, itemBuilder: (context, index) {PreferableItemModel model = provider.preferableModelObj.preferableItemList[index]; return PreferableItemWidget(model);});}))); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 139.v), padding: EdgeInsets.all(24.h), decoration: AppDecoration.linear, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 11.v), CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);})]))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the preferableSelectedScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.preferableSelectedScreen, ); } 
 }
