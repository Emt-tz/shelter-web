import 'package:flutter/material.dart';

class DesktopCarouselSection extends StatefulWidget {
  const DesktopCarouselSection({Key? key}) : super(key: key);

  @override
  _DesktopCarouselSectionState createState() => _DesktopCarouselSectionState();
}

class _DesktopCarouselSectionState extends State<DesktopCarouselSection> {
  //guests increment or decrement
  int guests = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 530,
          width: MediaQuery.of(context).size.width,
          child: const Image(
            image: NetworkImage(
                "https://images.sonder.com/image/upload/q_auto:eco,f_auto,w_1920,g_south,ar_360:169,c_fill//v1618264054/catalina/homepage/hero/hero-slide-03.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 530,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.centerRight,
              end: FractionalOffset.centerLeft,
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 100, top: 150),
          child: const Align(
            alignment: Alignment.topLeft,
            child: const Text(
              "A better way\nto stay",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 100, top: 150),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Inspirin, award-winning design\nmeets moderns, mobile-first service. \nWelcome to the future of hospitality.",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        //booking calendar widget
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 80,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Container(
              padding:
                  const EdgeInsets.only(top: 1, bottom: 1, left: 5, right: 5),
              height: 100,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Material(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      hoverColor: const Color(0xFFe6e6e6),
                      borderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 80,
                        width: MediaQuery.of(context).size.width * 0.9 * 0.25,
                        decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(60)),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                            hintText: 'Select a city',
                          ),
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    //check in check out
                    InkWell(
                      hoverColor: const Color(0xFFe6e6e6),
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width * 0.9 * 0.25,
                        decoration: const BoxDecoration(
                            // color: Colors.deepPurple[300],
                            ),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Icon(
                              Icons.calendar_today,
                              size: 18,
                            )),
                            Expanded(child: Text("Check-in")),
                            Expanded(child: Icon(Icons.arrow_right)),
                            Expanded(child: Text("Check-out")),
                          ],
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    //guests and search button
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          // color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(60)),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Icon(Icons.manage_accounts),
                            ),
                            const Expanded(
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

                            const Spacer(),
                            InkWell(
                              hoverColor: Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text("Search"),
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
    );
  }
}
