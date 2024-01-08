import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/detailed_profile_screen/models/detailed_profile_model.dart';

/// A provider class for the DetailedProfileScreen.
///
/// This provider manages the state of the DetailedProfileScreen, including the
/// current detailedProfileModelObj

// ignore_for_file: must_be_immutable
class DetailedProfileProvider extends ChangeNotifier {
  DetailedProfileModel detailedProfileModelObj = DetailedProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
