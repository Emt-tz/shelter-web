// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/destinations_cities_listing.dart';
import 'package:shelterweb/widgets/desktop/destinations_cities_search_bar.dart';
import 'package:shelterweb/widgets/desktop/section_navbar.dart';

class DesktopDestinationsCitiesPage extends StatefulWidget {
  const DesktopDestinationsCitiesPage({Key? key}) : super(key: key);

  @override
  _DesktopDestinationsCitiesPageState createState() =>
      _DesktopDestinationsCitiesPageState();
}

class _DesktopDestinationsCitiesPageState
    extends State<DesktopDestinationsCitiesPage> {
  //for the scroll bar
  final ScrollController controller = ScrollController();
  bool _navSearchVisibility = false;
  //scroll to top
  bool _showBackToTopButton = false;

  //init
  @override
  void initState() {
    controller.addListener(() {
      //listener
      setState(() {
        controller.offset > 550
            ? _navSearchVisibility = true
            : _navSearchVisibility = false;
        controller.offset >= 400
            ? _showBackToTopButton = true // show the back-to-top button
            : _showBackToTopButton = false; // hide the back-to-top button
      });
    });
    super.initState();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    controller.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Nav
          DeskotpNavSection(navSearchVisibility: _navSearchVisibility),
          //destinations app bar
          DesktopDestinationsCitiesSearchBar(),
          Expanded(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 0; i < 10; ++i)
                    Padding(
                      padding: const EdgeInsets.only(left:150.0,top: 20),
                      child: DestinationCitiesListing(),
                    ),
                  //Amenities
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 12,
                  ),
                  //Where you will be
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 12,
                  ),
                  //Policies
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 12,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // This is our back-to-top button
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
    );
  }
}
