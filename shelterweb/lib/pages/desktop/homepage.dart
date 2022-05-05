// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:shelterweb/widgets/desktop/cities.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

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
  //cities view all hover button
  bool isHover = false;

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
                      //highlightColor: Colors.red,
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
                    height: 568,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: 530,
                          width: MediaQuery.of(context).size.width,
                          child: Image(
                            image: NetworkImage(
                                "https://images.sonder.com/image/upload/q_auto:eco,f_auto,w_1920,g_south,ar_360:169,c_fill//v1618264054/catalina/homepage/hero/hero-slide-03.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 530,
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
                          padding: EdgeInsets.only(left: 100,top:150),
                          child: Align(
                            alignment: Alignment.topLeft,
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
                          padding: EdgeInsets.only(left: 100, top: 150),
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
                  const SizedBox(height: 40),
                  //cities
                  SizedBox(
                    height: 768,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              DesktopSectionsTitle(
                                  title: "A world of choice",
                                  titleColor: Colors.black,
                                  subTitle:
                                      "From a room for a night to a loft for as long as you like,\nthere’s a Sonder for every occasion.",
                                  subTitleColor: Colors.black45),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
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
                              Spacer(),
                              Column(
                                children: [
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
                              ),Spacer(),
                              Column(
                                children: [
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
                              Spacer()
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(30),
                                hoverColor: Color(0xFFe6e6e6),
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
                                    color: isHover
                                        ? Colors.transparent
                                        : Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Text(
                                    "View all 35+ cities",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  //app advert
                  Container(
                    padding: EdgeInsets.only(left: 80, right: 80,top: 50),
                    height: 768,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFFAFAFA),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left:500.0),
                              child: Image(
                                
                                height: 650,
                                  image: NetworkImage(
                                      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pf-s73-ted-9997-01-mockup_2.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=d5e4553607937bc61364ae6375fef126")),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DesktopSectionsTitle(
                              title: "Everything you need\nis just a tap away",
                              titleColor: Colors.black,
                              subTitle:
                                  "From fresh towels to late checkout, our app puts\nyou in control. Your stay,your way.",
                              subTitleColor: Colors.black45,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.chat,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SelectableText(
                                            "24/7 in-app\ncustomer service"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.wifi,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SelectableText("One-tap Wifi access"),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 100,),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.my_location,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SelectableText("Neighborhood guides"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.watch,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SelectableText(
                                            "Request late checkout"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 140,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_400/v1616628024/catalina/homepage/tech_value_props/download_apple.png"),
                                          fit: BoxFit.fitWidth),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.sonder.com/image/upload/c_fill,f_auto,q_auto:eco,w_450/v1616628024/catalina/homepage/tech_value_props/download_android.png"),
                                          fit: BoxFit.fitWidth),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Divider(
                              thickness: 2,
                              height: 2,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SelectableText("The New York Times"),
                                    SelectableText(
                                        "The next billion-dollar\nstartups 2019")
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SelectableText("The New York Times"),
                                    SelectableText(
                                        "The next billion-dollar\nstartups 2019")
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SelectableText("The New York Times"),
                                    SelectableText(
                                        "The next billion-dollar\nstartups 2019")
                                  ],
                                ),
                              ],
                            ),
                            Spacer()
                          ],
                        ),
                      ],
                    ),
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
