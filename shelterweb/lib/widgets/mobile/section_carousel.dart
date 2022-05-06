// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MobileCarouselSection extends StatefulWidget {
  const MobileCarouselSection({Key? key}) : super(key: key);

  @override
  _MobileCarouselSectionState createState() => _MobileCarouselSectionState();
}

class _MobileCarouselSectionState extends State<MobileCarouselSection> {
  //guests increment or decrement
  int guests = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: NetworkImage(
                    "https://images.sonder.com/image/upload/q_auto:eco,f_auto,w_1920,g_south,ar_360:169,c_fill//v1618264054/catalina/homepage/hero/hero-slide-03.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: const Text(
                  "A better way to stay",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              top:100,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Inspirin, award-winning design meets moderns,\nmobile-first service. Welcome to the future of hospitality.",
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            //booking calendar widget
            Positioned(
              top: 200,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 360,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 1, bottom: 1, left: 5, right: 5),
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          hoverColor: const Color(0xFFe6e6e6),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(60)),
                          onTap: () {},
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: const TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  //borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                hintText: 'Select a city',
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                        //check in check out
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                // color: Colors.deepPurple[300],
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.calendar_today,
                                  size: 18,
                                ),
                                Text("Check-in"),
                                Icon(Icons.arrow_right),
                                Text("Check-out"),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                        //guests and search button
                        Container(
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            // color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                bottomRight: Radius.circular(60)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.manage_accounts),
                              const Text("Guests"),
                              //add guests or decrease guests
                              IconButton(
                                splashRadius: 18,
                                iconSize: 18,
                                onPressed: () {
                                  guests == 1
                                      ? setState(() {
                                          guests = 1;
                                        })
                                      : setState(() {
                                          guests = guests - 1;
                                        });
                                },
                                icon: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("$guests"),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                splashRadius: 18,
                                iconSize: 18,
                                onPressed: () {
                                  guests >= 1
                                      ? setState(() {
                                          guests = guests + 1;
                                        })
                                      : setState(() {
                                          guests = 1;
                                        });
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              "Search",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
