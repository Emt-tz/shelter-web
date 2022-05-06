// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/section_titles.dart';

class MobileAdvertSection extends StatelessWidget {
  const MobileAdvertSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MobileSectionsTitle(
          title: "Everything you need is just a tap away",
          titleColor: Colors.black,
          subTitle:
              "From fresh towels to late checkout, our app puts\nyou in control. Your stay,your way.",
          subTitleColor: Colors.black45,
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s73-ted-9997-01-mockup_2.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=d5e4553607937bc61364ae6375fef126"))),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.chat,
                      size: 35,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText("24/7 in-app\ncustomer service"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.my_location,
                      size: 35,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText("Neighborhood guides"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.wifi,
                      size: 35,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText("One-tap Wifi access"),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.watch,
                      size: 35,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText("Request late checkout"),
                  ],
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 140,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_400/v1616628024/catalina/homepage/tech_value_props/download_apple.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_450/v1616628024/catalina/homepage/tech_value_props/download_android.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
          height: 2,
          color: Colors.black45,
        ),
        const SizedBox(
          height: 14,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SelectableText(
              "The New York Times",
              style: TextStyle(color: Colors.black),
            ),
            SelectableText("The next billion-dollar startups 2019"),
            SizedBox(
              height: 10,
            ),
            SelectableText(
              "The New York Times",
              style: TextStyle(color: Colors.black),
            ),
            SelectableText("The next billion-dollar startups 2019"),
            SizedBox(
              height: 10,
            ),
            SelectableText(
              "The New York Times",
              style: TextStyle(color: Colors.black),
            ),
            SelectableText("The next billion-dollar startups 2019"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
