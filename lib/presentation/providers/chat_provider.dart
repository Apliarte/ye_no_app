import 'package:flutter/material.dart';
import 'package:ye_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:ye_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final  chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

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
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herReply();
    }

    notifyListeners();
    moveScrollToButton();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
  }

  Future<void> moveScrollToButton()async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 2000),
        curve: Curves.easeOut);
  }
}
