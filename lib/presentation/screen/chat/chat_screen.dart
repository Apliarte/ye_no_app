import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ye_no_app/domain/entities/message.dart';
import 'package:ye_no_app/presentation/providers/chat_provider.dart';
import 'package:ye_no_app/presentation/widget/chat/her_message_buble.dart';
import 'package:ye_no_app/presentation/widget/chat/my_message_bubble.dart';
import 'package:ye_no_app/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.hola.com/imagenes/actualidad/20190211137198/brad-pitt-cumple-jennifer-aniston/0-646-408/aniston-getty1-t.jpg?tx=w_680'),
          ),
        ),
        title: const Text('Mi Amor ❤'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messageList[index];

                      return (message.fromWho == FromWho.hers)
                          ? HerMessageBubble(message: message)
                          : MyMessageBubble(message: message);
                    })),
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,// esta y la anterior son validas
            )
          ],
        ),
      ),
    );
  }
}
