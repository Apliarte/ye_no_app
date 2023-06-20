import 'package:flutter/material.dart';
import 'package:ye_no_app/config/theme/app_theme.dart';
import 'package:ye_no_app/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 6).theme(),
      title: 'yes no app',
      debugShowCheckedModeBanner: false,
      home: const ChatScreen()
    );
  }
}
