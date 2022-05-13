import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/section_app_advert.dart';
import 'package:shelterweb/widgets/mobile/section_blog.dart';
import 'package:shelterweb/widgets/mobile/section_carousel.dart';
import 'package:shelterweb/widgets/mobile/section_cities.dart';
import 'package:shelterweb/widgets/mobile/section_footer.dart';
import 'package:shelterweb/widgets/mobile/section_navbar.dart';
import 'package:shelterweb/widgets/mobile/section_testimonial.dart';
import 'package:shelterweb/widgets/mobile/section_video.dart';
import 'package:universal_html/html.dart' as html;

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
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

  //refresh page
  refreshPage() {
    html.window.location.reload();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refreshPage(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //Nav
            MobileNavSection(navSearchVisibility: _navSearchVisibility),
            //start of main page
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    //carousel
                    SizedBox(
                      height: 550,
                      width: MediaQuery.of(context).size.width,
                      child: const MobileCarouselSection(),
                    ),
                    const SizedBox(height: 40),
                    //cities
                    SizedBox(
                        height: 858,
                        width: MediaQuery.of(context).size.width,
                        child: const MobileCitiesSection()),
                    const SizedBox(height: 50),
                    //app advert
                    Container(
                        padding: EdgeInsets.all(20),
                        height: 1170,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xFFFAFAFA),
                        child: MobileAdvertSection()),
                    const SizedBox(height: 100),
                    //video section
                    Container(
                      height: 670,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFFFAFAFA),
                      child: MobileVideoSection(),
                    ),
                    const SizedBox(height: 100),
                    //testimonial section
                    SizedBox(
                      height: 470,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.deepPurple[300],
                      child: MobileTestimonialSection(controller: controller),
                    ),
                    const SizedBox(height: 50),
                    //blog section
                    Container(
                        padding: EdgeInsets.all(20),
                        height: 568,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xFFFAFAFA),
                        child: MobileBlogSection()),
                    const SizedBox(height: 50),
                    //footer section
                    Container(
                      padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFFFAFAFA),
                      child: MobileFooterSection(),
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
      ),
    );
  }
}
