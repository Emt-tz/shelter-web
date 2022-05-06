import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

class DesktopAdvertSection extends StatelessWidget {
  const DesktopAdvertSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(left: 500.0),
              child: Image(
                  height: 650,
                  image: NetworkImage(
                      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s73-ted-9997-01-mockup_2.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=d5e4553607937bc61364ae6375fef126")),
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DesktopSectionsTitle(
              title: "Everything you need\nis just a tap away",
              titleColor: Colors.black,
              subTitle:
                  "From fresh towels to late checkout, our app puts\nyou in control. Your stay,your way.",
              subTitleColor: Colors.black45,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.chat,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const SelectableText("24/7 in-app\ncustomer service"),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.wifi,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const SelectableText("One-tap Wifi access"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 100,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.my_location,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const SelectableText("Neighborhood guides"),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.watch,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const SelectableText("Request late checkout"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 140,
                    height: 150,
                    decoration: const BoxDecoration(
                      image: const DecorationImage(
                          image: const NetworkImage(
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
                      image: const DecorationImage(
                          image: const NetworkImage(
                              "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_450/v1616628024/catalina/homepage/tech_value_props/download_android.png"),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Divider(
              thickness: 2,
              height: 2,
              color: Colors.black45,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SelectableText("The New York Times"),
                    const SelectableText("The next billion-dollar\nstartups 2019")
                  ],
                ),
                
                Column(
                  children: [
                    const SelectableText("The New York Times"),
                    const SelectableText("The next billion-dollar\nstartups 2019")
                  ],
                ),
               
                Column(
                  children: [
                    const SelectableText("The New York Times"),
                    const SelectableText("The next billion-dollar\nstartups 2019")
                  ],
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ],
    );
  }
}
