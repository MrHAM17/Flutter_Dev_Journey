import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/chat_screen/models/chat_model.dart';

/// A provider class for the ChatScreen.
///
/// This provider manages the state of the ChatScreen, including the
/// current chatModelObj

// ignore_for_file: must_be_immutable
class ChatProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatModel chatModelObj = ChatModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
