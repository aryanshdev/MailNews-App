import 'package:flutter/material.dart';
import 'package:mailnews/themeData.dart';
import 'package:mailnews/views/articleTileLarge.dart';
import 'package:mailnews/views/latestNewsTile.dart';

import 'PDF.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MailNews', theme: darkTheme, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: AppBar(

        leading: MaterialButton(onPressed: (){},child: Icon(Icons.menu, color: Theme.of(context).appBarTheme.iconTheme?.color,),),
      ),
      body: OnlinePDFViewer()
      // SingleChildScrollView(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     spacing: 10,
      //     children: [
      //       // SizedBox(
      //       //   width: double.infinity,
      //       //   child: Padding(
      //       //     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      //       //     child: Text(
      //       //       "Latest Updates",
      //       //       textAlign: TextAlign.start,
      //       //       style: Theme.of(context).textTheme.headlineMedium,
      //       //     ),
      //       //   ),
      //       // ),
      //       // SingleChildScrollView(
      //       //   scrollDirection: Axis.horizontal,
      //       //   child: Padding(
      //       //     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      //       //     child: Row(
      //       //
      //       //       spacing: 16,
      //       //       children: [
      //       //         LatestNewsTile(num: 1),
      //       //         LatestNewsTile(num: 12),
      //       //         LatestNewsTile(num: 13),
      //       //         LatestNewsTile(num: 14),
      //       //       ],
      //       //     ),
      //       //   ),
      //       // ),
      //       // Text("All")
      //       OnlinePDFViewer()
      //     ],
      //   ),
      // ),

    );
  }
}
