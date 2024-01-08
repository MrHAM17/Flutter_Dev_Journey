import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/welcome_screen/models/welcome_model.dart';/// A provider class for the WelcomeScreen.
///
/// This provider manages the state of the WelcomeScreen, including the
/// current welcomeModelObj

// ignore_for_file: must_be_immutable
class WelcomeProvider extends ChangeNotifier {WelcomeModel welcomeModelObj = WelcomeModel();

@override void dispose() { super.dispose(); } 
 }
