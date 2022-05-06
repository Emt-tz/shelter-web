import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';
import 'package:shelterweb/widgets/desktop/testimonial_container.dart';

class DesktopTestimonialSection extends StatefulWidget {
  final ScrollController controller;
  const DesktopTestimonialSection({Key? key, required this.controller})
      : super(key: key);

  @override
  _DesktopTestimonialSectionState createState() =>
      _DesktopTestimonialSectionState();
}

class _DesktopTestimonialSectionState extends State<DesktopTestimonialSection> {
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
          padding: EdgeInsets.all(80.0),
          child: DesktopSectionsTitle(
            title: "Every stay has a story",
            titleColor: Colors.black,
            subTitle:
                "It’s hard to explain what makes Sonder so special.\nUnless, of course, you’re one of our guests.",
            subTitleColor: Colors.black45,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                DesktopTestimonialContainer(
                    title:
                        "\"I had a wonderful stay and was blown\naway by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                    author: "Fleur R",
                    location: "London"),
                DesktopTestimonialContainer(
                    title:
                        "\"I had a wonderful stay and was blown\naway by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                    author: "Fleur R",
                    location: "London"),
                DesktopTestimonialContainer(
                    title:
                        "\"I had a wonderful stay and was blown\naway by the thoughtfoul design and\nfunctionality of the apartment. Can't\nwait to check out other Sonders in the future.",
                    author: "Fleur R",
                    location: "London"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
