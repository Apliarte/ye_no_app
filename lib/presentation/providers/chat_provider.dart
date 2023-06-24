import 'package:flutter/material.dart';
import 'package:ye_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(
      text: 'Hola Amor!',
      fromWho: FromWho.me,
    ),
    Message(
      text: 'Ya llegaste del trabajo?',
      fromWho: FromWho.me,
    ),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToButton();
  }

  void moveScrollToButton() {
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
