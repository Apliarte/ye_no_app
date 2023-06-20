import 'package:flutter/material.dart';

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
    );
  }
}
