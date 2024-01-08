import '../playlists_screen/widgets/playlists_item_widget.dart';import 'models/playlists_item_model.dart';import 'models/playlists_model.dart';import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'provider/playlists_provider.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/new_playlist_bottomsheet/new_playlist_bottomsheet.dart';class PlaylistsScreen extends StatefulWidget {const PlaylistsScreen({Key? key}) : super(key: key);

@override PlaylistsScreenState createState() =>  PlaylistsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PlaylistsProvider(), child: PlaylistsScreen()); } 
 }
class PlaylistsScreenState extends State<PlaylistsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildSortBy(context), SizedBox(height: 22.v), Divider(), SizedBox(height: 23.v), _buildPlaylists(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v)), title: AppbarTitle(text: "lbl_playlists".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 14.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 38.h))]); } 
/// Section Widget
Widget _buildSortBy(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_sort_by".tr, style: theme.textTheme.titleLarge), Spacer(), Text("lbl_recently_added".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16), CustomImageView(imagePath: ImageConstant.imgIconlyCurvedSwap, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 12.h, bottom: 4.v))]); } 
/// Section Widget
Widget _buildPlaylists(BuildContext context) { return Consumer<PlaylistsProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: provider.playlistsModelObj.playlistsItemList.length, itemBuilder: (context, index) {PlaylistsItemModel model = provider.playlistsModelObj.playlistsItemList[index]; return PlaylistsItemWidget(model, onTapTypeListThemeLight: () {onTapTypeListThemeLight(context);});});}); } 
/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [NewPlaylistBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapTypeListThemeLight(BuildContext context) { showModalBottomSheet(context: context, builder: (_) => NewPlaylistBottomsheet.builder(context), isScrollControlled: true); } 
 }
