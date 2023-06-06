import 'package:flutter/material.dart';
import 'package:lafyuuapp/menu.dart';
import 'package:lafyuuapp/pages/homePage.dart';
import 'package:lafyuuapp/pages/loadingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: loadingPage(),
    );
  }
}
