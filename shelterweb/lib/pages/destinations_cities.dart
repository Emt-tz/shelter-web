import 'package:flutter/material.dart';
import 'package:shelterweb/constants/pages.dart';
import 'package:shelterweb/pages/desktop/destinations_cities.dart';
import 'package:shelterweb/pages/desktop/destinations_details.dart';
import 'package:shelterweb/pages/mobile/destinations_details.dart';

class DestinationsCitiesPage extends StatefulWidget {
  const DestinationsCitiesPage({Key? key}) : super(key: key);

  @override
  _DestinationsCitiesPageState createState() => _DestinationsCitiesPageState();
}

class _DestinationsCitiesPageState extends State<DestinationsCitiesPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= mobile) {
          return DesktopDestinationsCitiesPage();
        } else if (constraints.maxWidth > mobile &&
            constraints.maxWidth <= tablet) {
          return Center(child: Text("Not optimized for Tablets"));
        } else {
          return DesktopDestinationsCitiesPage();
        }
      },
    );
  }
}
