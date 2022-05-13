import 'package:flutter/material.dart';

class DesktopDestinationsTabBar extends StatefulWidget {
  const DesktopDestinationsTabBar({Key? key}) : super(key: key);

  @override
  _DesktopDestinationsTabBarState createState() =>
      _DesktopDestinationsTabBarState();
}

class _DesktopDestinationsTabBarState extends State<DesktopDestinationsTabBar> {
  List tabs = [
    "Overview",
    "Availability",
    "Amenities",
    "Where you will be",
    "Booking policies"
  ];

  final double kheight = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: kheight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < tabs.length; ++i)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tabs[i],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      width: 100,
                      height: 2,
                      color: Colors.black45,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: 54,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Go to blog",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
