import 'package:flutter/material.dart';
import 'package:shelterweb/constants/pages.dart';
import 'package:shelterweb/pages/desktop/destinations_details.dart';
import 'package:shelterweb/pages/mobile/destinations_details.dart';

class DestinationsDetailsPage extends StatefulWidget {
  const DestinationsDetailsPage({Key? key}) : super(key: key);

  @override
  _DestinationsDetailsPageState createState() => _DestinationsDetailsPageState();
}

class _DestinationsDetailsPageState extends State<DestinationsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= mobile) {
          return MobileDestinationsDetailsPage();
        } else if (constraints.maxWidth > mobile &&
            constraints.maxWidth <= tablet) {
          return Center(child: Text("Not optimized for Tablets"));
        } else {
          return DesktopDestinationsDetailsPage();
        }
      },
    );
  }
}
