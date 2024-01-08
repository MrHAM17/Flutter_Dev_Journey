import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/transfer_request_screen/models/transfer_request_model.dart';
import '../models/transferrequest_item_model.dart';

/// A provider class for the TransferRequestScreen.
///
/// This provider manages the state of the TransferRequestScreen, including the
/// current transferRequestModelObj

// ignore_for_file: must_be_immutable
class TransferRequestProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TransferRequestModel transferRequestModelObj = TransferRequestModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
