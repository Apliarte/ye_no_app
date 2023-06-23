import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2==0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
              },
            )),
            //caja mensage
            MessageFieldBox()        ],
        ),
      ),
    );
  }
}
