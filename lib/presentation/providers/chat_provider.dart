import 'package:flutter/material.dart';
import 'package:ye_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

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
    // TODO: Implementar método
  }


}
