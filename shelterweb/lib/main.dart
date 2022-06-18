import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shelterweb/pages/destinations_cities.dart';
import 'package:shelterweb/pages/destinations_details.dart';
import 'package:shelterweb/pages/homepage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  //setPathUrlStrategy();
  setUrlStrategy(PathUrlStrategy());
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
      initialRoute: "/destinations/cities",
      routes: {
        '/': (context) => const HomePage(),
        '/home': (context) => const HomePage(),
        '/destinations/details':(context)=>const DestinationsDetailsPage(),
        '/destinations/cities':(context)=>const DestinationsCitiesPage()
      },
      //home: const HomePage(),
    );
  }
}
