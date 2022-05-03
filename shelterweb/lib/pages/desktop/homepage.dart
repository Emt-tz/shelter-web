// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'dart:math';

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
  //guests increment or decrement
  int guests = 1;

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
      backgroundColor: Colors.white,
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
                    height: MediaQuery.of(context).size.height * 0.76,
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
                        //booking calendar widget
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top: 1, bottom: 1, left: 5, right: 5),
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Material(
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      hoverColor: Color(0xFFe6e6e6),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(60),
                                          bottomLeft: Radius.circular(60)),
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        height: 80,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9 *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(60),
                                              bottomLeft: Radius.circular(60)),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(10),
                                            prefixIcon: Icon(Icons.search),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  bottomLeft:
                                                      Radius.circular(30)),
                                            ),
                                            hintText: 'Select a city',
                                          ),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    //check in check out
                                    InkWell(
                                      hoverColor: Color(0xFFe6e6e6),
                                      onTap: () {},
                                      child: Container(
                                        height: 80,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9 *
                                                0.25,
                                        decoration: BoxDecoration(
                                            // color: Colors.deepPurple[300],
                                            ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Icon(
                                              Icons.calendar_today,
                                              size: 18,
                                            )),
                                            Expanded(child: Text("Check-in")),
                                            Expanded(
                                                child: Icon(Icons.arrow_right)),
                                            Expanded(child: Text("Check-out")),
                                          ],
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    //guests and search button
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                          // color: Colors.deepPurple[300],
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(60),
                                              bottomRight: Radius.circular(60)),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child:
                                                  Icon(Icons.manage_accounts),
                                            ),
                                            Expanded(
                                              child: Text("Guests"),
                                            ),
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
                                              icon: Icon(Icons.remove),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("$guests"),
                                            SizedBox(
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
                                              icon: Icon(Icons.add),
                                            ),

                                            Spacer(),
                                            InkWell(
                                              hoverColor: Colors.grey[300],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              onTap: () {},
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 100,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Text("Search"),
                                              ),
                                            ),
                                          ],
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
