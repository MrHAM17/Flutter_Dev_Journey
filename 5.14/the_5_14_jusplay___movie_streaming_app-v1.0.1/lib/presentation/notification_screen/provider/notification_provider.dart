import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/notification_screen/models/notification_model.dart';
import '../models/notification_item_model.dart';

/// A provider class for the NotificationScreen.
///
/// This provider manages the state of the NotificationScreen, including the
/// current notificationModelObj

// ignore_for_file: must_be_immutable
class NotificationProvider extends ChangeNotifier {
  NotificationModel notificationModelObj = NotificationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
