import 'package:flutter/material.dart';
import 'package:ye_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(
      text: 'Hola Amor!',
      fromwho: FromWho.me,
    ),
    Message(
      text: 'Ya llegaste del trabajo?',
      fromwho: FromWho.me,
    ),
  ];

Future<void> sendMessage(String text) async {
    // TODO: Implementar método
  }


}
