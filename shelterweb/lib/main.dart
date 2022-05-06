import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      title: 'shelter web',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      //routes
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
      },
      //home: const HomePage(),
    );
  }
}
