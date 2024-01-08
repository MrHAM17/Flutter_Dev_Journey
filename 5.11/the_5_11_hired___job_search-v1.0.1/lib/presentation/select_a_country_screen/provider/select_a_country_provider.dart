import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/select_a_country_screen/models/select_a_country_model.dart';

/// A provider class for the SelectACountryScreen.
///
/// This provider manages the state of the SelectACountryScreen, including the
/// current selectACountryModelObj
class SelectACountryProvider extends ChangeNotifier {
  SelectACountryModel selectACountryModelObj = SelectACountryModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
