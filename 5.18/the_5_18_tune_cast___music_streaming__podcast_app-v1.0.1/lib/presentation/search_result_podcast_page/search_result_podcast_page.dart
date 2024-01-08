import '../search_result_podcast_page/widgets/fiftynine_item_widget.dart';import '../search_result_podcast_page/widgets/frame1_item_widget.dart';import 'models/fiftynine_item_model.dart';import 'models/frame1_item_model.dart';import 'models/search_result_podcast_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'provider/search_result_podcast_provider.dart';class SearchResultPodcastPage extends StatefulWidget {const SearchResultPodcastPage({Key? key}) : super(key: key);

@override SearchResultPodcastPageState createState() =>  SearchResultPodcastPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchResultPodcastProvider(), child: SearchResultPodcastPage()); } 
 }
class SearchResultPodcastPageState extends State<SearchResultPodcastPage> with  AutomaticKeepAliveClientMixin<SearchResultPodcastPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 24.h), child: _buildAutoLayoutHorizontal(context, episodes: "msg_podcasts_shows".tr, seeAll: "lbl_see_all".tr)), SizedBox(height: 16.v), _buildFrame(context), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(right: 24.h), child: _buildAutoLayoutHorizontal(context, episodes: "lbl_episodes".tr, seeAll: "lbl_see_all".tr)), SizedBox(height: 21.v), _buildFiftyNine(context)])))])))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return SizedBox(height: 193.v, child: Consumer<SearchResultPodcastProvider>(builder: (context, provider, child) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: provider.searchResultPodcastModelObj.frame1ItemList.length, itemBuilder: (context, index) {Frame1ItemModel model = provider.searchResultPodcastModelObj.frame1ItemList[index]; return Frame1ItemWidget(model, onTapPodcastCard: () {onTapPodcastCard(context);});});})); } 
/// Section Widget
Widget _buildFiftyNine(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 24.h), child: Consumer<SearchResultPodcastProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.searchResultPodcastModelObj.fiftynineItemList.length, itemBuilder: (context, index) {FiftynineItemModel model = provider.searchResultPodcastModelObj.fiftynineItemList[index]; return FiftynineItemWidget(model);});})); } 
/// Common widget
Widget _buildAutoLayoutHorizontal(BuildContext context, {required String episodes, required String seeAll, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(episodes, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.gray90001))), Padding(padding: EdgeInsets.only(bottom: 10.v), child: Text(seeAll, style: CustomTextStyles.titleMediumOnPrimaryContainer16.copyWith(color: theme.colorScheme.onPrimaryContainer)))]); } 
/// Navigates to the podcastDetailsScreen when the action is triggered.
onTapPodcastCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.podcastDetailsScreen, ); } 
 }
