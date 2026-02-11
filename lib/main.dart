import 'package:flutter/material.dart';
import 'package:mailnews/themeData.dart';
import 'package:mailnews/views/articleTileLarge.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MailNews',
      theme: darkTheme,
      home: TempBody()
    );
  }
}

class TempBody extends StatelessWidget {
  const TempBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ArticleTileLarge(),
          ArticleTileLarge(),
          ArticleTileLarge(),
          ArticleTileLarge(),
        ],
      ),
    );
  }
}
