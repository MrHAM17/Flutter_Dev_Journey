import 'package:flutter/material.dart';
import 'package:the_5_02_music_player/core/app_export.dart';
import 'package:the_5_02_music_player/presentation/top_playlists_page/models/top_playlists_model.dart';
import '../models/topplaylist_item_model.dart';

/// A provider class for the TopPlaylistsPage.
///
/// This provider manages the state of the TopPlaylistsPage, including the
/// current topPlaylistsModelObj

// ignore_for_file: must_be_immutable
class TopPlaylistsProvider extends ChangeNotifier {
  TopPlaylistsModel topPlaylistsModelObj = TopPlaylistsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
