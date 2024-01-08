import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_listing_screen/models/home_listing_model.dart';/// A provider class for the HomeListingScreen.
///
/// This provider manages the state of the HomeListingScreen, including the
/// current homeListingModelObj

// ignore_for_file: must_be_immutable
class HomeListingProvider extends ChangeNotifier {HomeListingModel homeListingModelObj = HomeListingModel();

@override void dispose() { super.dispose(); } 
 }
