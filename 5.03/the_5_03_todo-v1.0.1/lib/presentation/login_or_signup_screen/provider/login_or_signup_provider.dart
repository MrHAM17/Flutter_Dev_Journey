import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/presentation/login_or_signup_screen/models/login_or_signup_model.dart';

/// A provider class for the LoginOrSignupScreen.
///
/// This provider manages the state of the LoginOrSignupScreen, including the
/// current loginOrSignupModelObj

// ignore_for_file: must_be_immutable
class LoginOrSignupProvider extends ChangeNotifier {
  LoginOrSignupModel loginOrSignupModelObj = LoginOrSignupModel();

  @override
  void dispose() {
    super.dispose();
  }
}
