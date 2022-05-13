// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/destinations_details_tab_bar.dart';
import 'package:shelterweb/widgets/desktop/section_destination_details.dart';
import 'package:shelterweb/widgets/desktop/section_gallery.dart';
import 'package:shelterweb/widgets/desktop/section_navbar.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

class DesktopDestinationsDetailsPage extends StatefulWidget {
  const DesktopDestinationsDetailsPage({Key? key}) : super(key: key);

  @override
  _DesktopDestinationsDetailsPageState createState() =>
      _DesktopDestinationsDetailsPageState();
}

class _DesktopDestinationsDetailsPageState extends State<DesktopDestinationsDetailsPage> {
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
        children: [
          //Nav
          // DeskotpNavSection(navSearchVisibility: _navSearchVisibility),
          Expanded(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // //widget responsive gallery
                  // DesktopGallerySection(
                  //   defaultimage:
                  //       'https://res.cloudinary.com/sonder/image/private/s--p8P5hpmq--/c_fill,f_auto,q_auto:eco,w_1280/v1/s3assets/unit_images/images/000/341/417/original/Q7e0kWPo.jpeg',
                  //   sideimage1:
                  //       'https://res.cloudinary.com/sonder/image/private/s--f_qb9o3l--/c_fill,f_auto,q_auto:eco,w_768/v1/s3assets/unit_images/images/000/340/770/original/au6V2_Hv.jpg',
                  //   sideimage2:
                  //       'https://res.cloudinary.com/sonder/image/private/s--o95zKnOe--/c_fill,f_auto,q_auto:eco,w_768/v1/s3assets/unit_images/images/000/340/774/original/I3dN-GAB.jpeg',
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // //details destination
                  // Padding(
                  //   padding: const EdgeInsets.all(50.0),
                  //   child: DesktopDestinationDetails(),
                  // ),
                  //destinations app bar
                  Visibility(child: DesktopDestinationsTabBar()),
                  //Availablities and rates
                  VerticalDivider(color: Colors.black,thickness: 12,),
                  //Amenities
                  VerticalDivider(color: Colors.black,thickness: 12,),
                   //Where you will be
                  VerticalDivider(color: Colors.black,thickness: 12,),
                  //Policies
                  VerticalDivider(color: Colors.black,thickness: 12,)
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
