import 'package:flutter/material.dart';
import 'package:shelterweb/pages/homepage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shelter Web',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
