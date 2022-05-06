// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/mobile/blog_container.dart';
import 'package:shelterweb/widgets/mobile/section_titles.dart';

class MobileBlogSection extends StatefulWidget {
  const MobileBlogSection({Key? key}) : super(key: key);

  @override
  _MobileBlogSectionState createState() => _MobileBlogSectionState();
}

class _MobileBlogSectionState extends State<MobileBlogSection> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MobileSectionsTitle(
          title: "Shelter Blog",
          titleColor: Colors.black,
          subTitle:
              "From latest news to team interviews, learn more about the passion that powers a Sonder.",
          subTitleColor: Colors.black45,
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MobileBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
                SizedBox(
                  width: 20,
                ),
                MobileBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
                SizedBox(
                  width: 20,
                ),
                MobileBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 54,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: isHover ? Colors.black : Colors.black45,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Go to blog",
              style: TextStyle(
                  color: isHover ? Colors.white : Colors.white, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
