import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/home_tab_container_page/models/home_tab_container_model.dart';

/// A provider class for the HomeTabContainerPage.
///
/// This provider manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomeTabContainerProvider extends ChangeNotifier {
  HomeTabContainerModel homeTabContainerModelObj = HomeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
