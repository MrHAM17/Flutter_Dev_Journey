import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/splash_screen/models/splash_model.dart';

/// A provider class for the SplashScreen.
///
/// This provider manages the state of the SplashScreen, including the
/// current splashModelObj

// ignore_for_file: must_be_immutable
class SplashProvider extends ChangeNotifier {
  SplashModel splashModelObj = SplashModel();

  @override
  void dispose() {
    super.dispose();
  }
}
