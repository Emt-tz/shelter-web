import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/section_titles.dart';
import 'package:shelterweb/widgets/mobile/testimonial_container.dart';

class MobileTestimonialSection extends StatefulWidget {
  final ScrollController controller;
  const MobileTestimonialSection({Key? key, required this.controller})
      : super(key: key);

  @override
  _MobileTestimonialSectionState createState() =>
      _MobileTestimonialSectionState();
}

class _MobileTestimonialSectionState extends State<MobileTestimonialSection> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    widget.controller.addListener(() {
      //listener
      widget.controller.offset > 2100
          ? setState(() {
              _visible = true;
            })
          : setState(() {
              _visible = false;
            });
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: MobileSectionsTitle(
            title: "Every stay has a story",
            titleColor: Colors.black,
            subTitle:
                "It’s hard to explain what makes Sonder so special.\nUnless, of course, you’re one of our guests.",
            subTitleColor: Colors.black45,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  MobileTestimonialContainer(
                      title:
                          "\"I had a wonderful stay and was blown away by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                      author: "Fleur R",
                      location: "London"),
                  SizedBox(
                    width: 20,
                  ),
                  MobileTestimonialContainer(
                      title:
                          "\"I had a wonderful stay and was blown away by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                      author: "Fleur R",
                      location: "London"),
                  SizedBox(
                    width: 20,
                  ),
                  MobileTestimonialContainer(
                      title:
                          "\"I had a wonderful stay and was blown away by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                      author: "Fleur R",
                      location: "London"),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
