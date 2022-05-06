import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/cities.dart';

import 'package:shelterweb/widgets/mobile/section_titles.dart';

class MobileCitiesSection extends StatefulWidget {
  const MobileCitiesSection({Key? key}) : super(key: key);

  @override
  _MobileCitiesSectionState createState() => _MobileCitiesSectionState();
}

class _MobileCitiesSectionState extends State<MobileCitiesSection> {
  //cities view all hover button
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Flexible(
                child: MobileSectionsTitle(
                    title: "A world of choice",
                    titleColor: Colors.black,
                    subTitle:
                        "From a room for a night to a loft for as long\nas you like,there’s a Sonder for every\noccasion.",
                    subTitleColor: Colors.black45),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MobileCitiesWidget(
                  cityName: "Chicago",
                  defaultImage:
                      "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                  neighbourhoods: 6),
              SizedBox(
                height: 30,
              ),
              MobileCitiesWidget(
                  cityName: "Chicago",
                  defaultImage:
                      "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                  neighbourhoods: 6),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "View all 35+ cities",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
