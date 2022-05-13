// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

class DesktopDestinationDetails extends StatefulWidget {
  const DesktopDestinationDetails({Key? key}) : super(key: key);

  @override
  _DesktopDestinationDetailsState createState() =>
      _DesktopDestinationDetailsState();
}

class _DesktopDestinationDetailsState extends State<DesktopDestinationDetails> {
  static const double kheight = 480;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: kheight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesktopSectionsTitle(
            title: "Park House",
            titleColor: Colors.black,
            subTitle: "Oud-Zuid, Amsterdam",
            subTitleColor: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: SelectableText(
                          "Museums, thrift shopping, and stroopwafels — your Amsterdam experience begins at Park House. Each room includes a coffee maker, space to work, and an HDMI-equipped television for streaming. To unwind, we love the cozy lounge and calming garden terrace. In the Oud-Zuid neighborhood, there’s plenty to discover. PC Hooftstraat has luxury and vintage clothing stores. The iconic Rijksmuseum is home to the best of Dutch art. And Vondelpark hosts seasonal outdoor concerts at the Openluchttheater. Enjoy a picturesque stay at Park House.",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      chipsWithTitle("The Sonders standard"),
                      chipsWithTitle("Top amenities"),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  //widgets extra for this section
  Widget chipsWithTitle(String title) {
    List amenities = [
      "Contactless check-in",
      "Professionally cleaned",
      "Fast WiFi",
      "24/7 support"
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Wrap(
          children: [
            for (var i = 0; i < amenities.length; ++i)
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 8.0, right: 8.0, top: 8.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(amenities[i]),
                ),
              )
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
