import 'package:flutter/material.dart';
import 'package:ye_no_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().theme(),
      title: 'yes no app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:  Center(
          child: FilledButton.tonal(onPressed: (){}, child: const Text('click me')), ),
        ),
      
    );
  }
}