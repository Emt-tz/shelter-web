// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DestinationCitiesListing extends StatefulWidget {
  const DestinationCitiesListing({Key? key}) : super(key: key);

  @override
  _DestinationCitiesListingState createState() =>
      _DestinationCitiesListingState();
}

class _DestinationCitiesListingState extends State<DestinationCitiesListing> {
  PageController pageViewController = PageController();
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 440,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Duncan Plaza',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Central business district,  New Orleans',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MediaQuery.of(context).size.width < 1760
                      ? Scrollbar(
                          scrollbarOrientation: ScrollbarOrientation.bottom,
                          controller: controller,
                          thickness: 2,
                          hoverThickness: 2,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: controller,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (var i = 0; i < 3; ++i)
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0x1F000000),
                                      borderRadius: BorderRadius.circular(30),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'In unit Laundry',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0x1F000000),
                                      borderRadius: BorderRadius.circular(30),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        '+4 more',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (var i = 0; i < 3; ++i)
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0x1F000000),
                                    borderRadius: BorderRadius.circular(30),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'In unit Laundry',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0x1F000000),
                                  borderRadius: BorderRadius.circular(30),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    '+4 more',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: 400,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0xFF313335),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              PageView(
                                controller: pageViewController,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/704/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/83/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/820/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/48/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/857/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: SmoothPageIndicator(
                                    controller: pageViewController,
                                    count: 5,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) {
                                      pageViewController.animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: SlideEffect(
                                      spacing: 8,
                                      radius: 16,
                                      dotWidth: 12,
                                      dotHeight: 12,
                                      dotColor: Color(0xFFCECECE),
                                      activeDotColor: Color(0xFFFAFAFA),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 320,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Room types & Nightly Rates',
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1 Bedroom',
                                ),
                                Text(
                                  'from US\$300',
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 0.5,
                            thickness: 1.5,
                            indent: 10,
                            endIndent: 10,
                            color: Color(0x1E000000),
                          ),
                          Spacer(),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: InkWell(
                              focusColor: Colors.black12,
                              onTap: () {},
                              child: Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFBF00),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'See what is available',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
