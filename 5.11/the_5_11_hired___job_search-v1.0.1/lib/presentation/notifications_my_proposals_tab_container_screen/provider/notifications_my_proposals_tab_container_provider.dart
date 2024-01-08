import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/notifications_my_proposals_tab_container_screen/models/notifications_my_proposals_tab_container_model.dart';

/// A provider class for the NotificationsMyProposalsTabContainerScreen.
///
/// This provider manages the state of the NotificationsMyProposalsTabContainerScreen, including the
/// current notificationsMyProposalsTabContainerModelObj

// ignore_for_file: must_be_immutable
class NotificationsMyProposalsTabContainerProvider extends ChangeNotifier {
  NotificationsMyProposalsTabContainerModel
      notificationsMyProposalsTabContainerModelObj =
      NotificationsMyProposalsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
