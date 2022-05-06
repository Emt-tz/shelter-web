import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/section_app_advert.dart';
import 'package:shelterweb/widgets/desktop/section_blog.dart';
import 'package:shelterweb/widgets/desktop/section_carousel.dart';
import 'package:shelterweb/widgets/desktop/section_cities.dart';
import 'package:shelterweb/widgets/desktop/section_footer.dart';
import 'package:shelterweb/widgets/desktop/section_navbar.dart';
import 'package:shelterweb/widgets/desktop/section_testimonial.dart';
import 'package:shelterweb/widgets/desktop/section_video.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({Key? key}) : super(key: key);

  @override
  State<TabletHomePage> createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
  //for the scroll bar
  final ScrollController controller = ScrollController();
  bool _navSearchVisibility = false;
  //scroll to top
  bool _showBackToTopButton = false;

  //init
  @override
  void initState() {
    controller.addListener(() {
      //listener
      setState(() {
        controller.offset > 550
            ? _navSearchVisibility = true
            : _navSearchVisibility = false;
        controller.offset >= 400
            ? _showBackToTopButton = true // show the back-to-top button
            : _showBackToTopButton = false; // hide the back-to-top button
      });
    });
    super.initState();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    controller.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //Nav
          DeskotpNavSection(navSearchVisibility: _navSearchVisibility),
          //start of main page
          Expanded(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                children: [
                  //carousel
                  SizedBox(
                    height: 568,
                    width: MediaQuery.of(context).size.width,
                    child: DesktopCarouselSection(),
                  ),
                  const SizedBox(height: 40),
                  //cities
                  SizedBox(
                      height: 768,
                      width: MediaQuery.of(context).size.width,
                      child: DesktopCitiesSection()),
                  const SizedBox(height: 50),
                  //app advert
                  Container(
                      padding: EdgeInsets.only(left: 80, right: 80, top: 50),
                      height: 768,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFFFAFAFA),
                      child: DesktopAdvertSection()),
                  const SizedBox(height: 100),
                  //video section
                  SizedBox(
                    height: 668,
                    width: MediaQuery.of(context).size.width,
                    child: DekstopVideoSection(),
                  ),
                  const SizedBox(height: 100),
                  //testimonial section
                  SizedBox(
                    height: 568,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.deepPurple[300],
                    child: DesktopTestimonialSection(controller: controller),
                  ),
                  const SizedBox(height: 50),
                  //blog section
                  Container(
                      padding: EdgeInsets.only(left: 80, right: 80, top: 50),
                      height: 668,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFFFAFAFA),
                      child: DesktopBlogSection()),
                  const SizedBox(height: 50),
                  //footer section
                  Container(
                    padding: EdgeInsets.all(80),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFFAFAFA),
                    child: DesktopFooterSection(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      // This is our back-to-top button
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
    );
  }
}
