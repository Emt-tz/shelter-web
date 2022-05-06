import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/cities.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

class DesktopCitiesSection extends StatefulWidget {
  const DesktopCitiesSection({Key? key}) : super(key: key);

  @override
  _DesktopCitiesSectionState createState() => _DesktopCitiesSectionState();
}

class _DesktopCitiesSectionState extends State<DesktopCitiesSection> {
  //cities view all hover button
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              DesktopSectionsTitle(
                  title: "A world of choice",
                  titleColor: Colors.black,
                  subTitle:
                      "From a room for a night to a loft for as long as you like,\nthere’s a Sonder for every occasion.",
                  subTitleColor: Colors.black45),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: const [
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                  SizedBox(
                    height: 30,
                  ),
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                children: const [
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                  SizedBox(
                    height: 30,
                  ),
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                children: const [
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                  SizedBox(
                    height: 30,
                  ),
                  DesktopCitiesWidget(
                      cityName: "Chicago",
                      defaultImage:
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_600/v1616791504/catalina/homepage/city_grid/Chicago.png",
                      neighbourhoods: 6),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(30),
                hoverColor: const Color(0xFFe6e6e6),
                onHover: (val) {
                  setState(() {
                    isHover = val;
                  });
                },
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                    color:
                        isHover ? Colors.transparent : const Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "View all 35+ cities",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
