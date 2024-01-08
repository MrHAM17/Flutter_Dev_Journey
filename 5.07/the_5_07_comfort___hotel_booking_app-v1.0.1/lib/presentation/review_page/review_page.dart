import '../review_page/widgets/review_item_widget.dart';import 'models/review_item_model.dart';import 'models/review_model.dart';import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'provider/review_provider.dart';class ReviewPage extends StatefulWidget {const ReviewPage({Key? key}) : super(key: key);

@override ReviewPageState createState() =>  ReviewPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ReviewProvider(), child: ReviewPage()); } 
 }
class ReviewPageState extends State<ReviewPage> with  AutomaticKeepAliveClientMixin<ReviewPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 37.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildRattingHeader(context), SizedBox(height: 18.v), _buildReview(context)]))]))))); } 
/// Section Widget
Widget _buildRattingHeader(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_rating".tr, style: CustomTextStyles.titleMediumSemiBold), Spacer(), CustomImageView(imagePath: ImageConstant.imgSignalYellowA700, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_4_8".tr, style: CustomTextStyles.titleMediumPrimarySemiBold))])), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 3.v), child: Text("lbl_4_981_reviews".tr, style: CustomTextStyles.bodyMediumWhiteA700))]); } 
/// Section Widget
Widget _buildReview(BuildContext context) { return Consumer<ReviewProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: provider.reviewModelObj.reviewItemList.length, itemBuilder: (context, index) {ReviewItemModel model = provider.reviewModelObj.reviewItemList[index]; return ReviewItemWidget(model);});}); } 
 }
