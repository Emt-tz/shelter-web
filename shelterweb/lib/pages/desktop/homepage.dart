// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  //for the scroll bar
  final ScrollController controller = ScrollController();
  //for the nav search
  final TextEditingController SearchController = TextEditingController();
  bool _navSearchVisibility = false;

  //init
  @override
  void initState() {
    controller.addListener(() {
      //listener
      controller.offset > 300
          ? setState(() {
              _navSearchVisibility = true;
            })
          : setState(() {
              _navSearchVisibility = false;
            });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //nav bar
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 64,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // logo
                    Text(
                      "Shelter on Demand",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // search
                    Visibility(
                      visible: _navSearchVisibility,
                      child: InkWell(
                        hoverColor: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              hintText: 'Select a city',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _navSearchVisibility,
                      child: InkWell(
                        hoverColor: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("Search"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //spacer
              Spacer(),
              // currency
              Row(
                children: [
                  InkWell(
                    hoverColor: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("USD (\$)"),
                    ),
                  ),
                  // language
                  InkWell(
                    hoverColor: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.language),
                          SizedBox(
                            width: 5,
                          ),
                          Text("English"),
                        ],
                      ),
                    ),
                  ),
                  // auth
                  //login
                  InkWell(
                    hoverColor: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Log in"),
                    ),
                  ),
                  //sign up
                  InkWell(
                    hoverColor: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // menu
                  Theme(
                    data: Theme.of(context).copyWith(
                      highlightColor: Colors.red,
                      splashColor: Colors.transparent,
                    ),
                    child: PopupMenuButton(
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 80,
                        child: Icon(Icons.menu, size: 22),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onCanceled: () {
                        //do something
                      },
                      offset: Offset(-30, 40),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(
                            "About us",
                          ),
                          value: "about",
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Become a Host",
                          ),
                          value: "host",
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Support",
                          ),
                          value: "support",
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Blog",
                          ),
                          value: "blog",
                        ),
                        PopupMenuItem(
                          child: Text(
                            "Help",
                          ),
                          value: "help",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          //start of main page
          Expanded(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  //carousel
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: NetworkImage(
                                "https://images.sonder.com/image/upload/q_auto:eco,f_auto,w_1920,g_south,ar_360:169,c_fill//v1618264054/catalina/homepage/hero/hero-slide-03.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.centerRight,
                                  end: FractionalOffset.centerLeft,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black54,
                                  ],
                                  stops: [
                                    0.0,
                                    1.0
                                  ])),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "A better way\nto stay",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 100, top: 250),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Inspirin, award-winning design\nmeets moderns, mobile-first service. \nWelcome to the future of hospitality.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  //cities
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300]),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300]),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300])
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300])
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300]),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.deepPurple[300])
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                color: Colors.deepPurple[300])
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  //app advert
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                  ),
                  const SizedBox(height: 20),
                  //video section
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                  ),
                  const SizedBox(height: 20),
                  //testimonial section
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                  ),
                  const SizedBox(height: 20),
                  //blog section
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                  ),
                  const SizedBox(height: 20),
                  //footer section
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[300],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
