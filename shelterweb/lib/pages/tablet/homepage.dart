import 'package:flutter/material.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({ Key? key }) : super(key: key);

  @override
  State<TabletHomePage> createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          //nav bar
          Container(
              height: 64,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple[300],
              child: Text("HomePage Tablet"),
              ),
          SizedBox(height: 20),
          //carousel
          Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple[300]),
          SizedBox(height: 20),
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
                            color: Colors.deepPurple[300])
                      ],
                    )
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
          SizedBox(height: 20),
          //app advert
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple[300],
          ),
          SizedBox(height: 20),
          //video section
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple[300],
          ),
          SizedBox(height: 20),
          //testimonial section
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple[300],
          ),
          SizedBox(height: 20),
          //blog section
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple[300],
          ),
          SizedBox(height: 20),
          //footer section
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple[300],
          ),
        ],
      ),
    );
  }
}