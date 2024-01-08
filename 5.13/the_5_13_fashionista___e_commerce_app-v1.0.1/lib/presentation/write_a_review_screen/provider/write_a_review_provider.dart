import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/write_a_review_screen/models/write_a_review_model.dart';

/// A provider class for the WriteAReviewScreen.
///
/// This provider manages the state of the WriteAReviewScreen, including the
/// current writeAReviewModelObj

// ignore_for_file: must_be_immutable
class WriteAReviewProvider extends ChangeNotifier {
  TextEditingController inputFieldsController = TextEditingController();

  WriteAReviewModel writeAReviewModelObj = WriteAReviewModel();

  @override
  void dispose() {
    super.dispose();
    inputFieldsController.dispose();
  }
}
