import 'package:flutter/material.dart';
import 'package:shelterweb/widgets/desktop/blog_container.dart';
import 'package:shelterweb/widgets/desktop/section_titles.dart';

class DesktopBlogSection extends StatefulWidget {
  const DesktopBlogSection({Key? key}) : super(key: key);

  @override
  _DesktopBlogSectionState createState() => _DesktopBlogSectionState();
}

class _DesktopBlogSectionState extends State<DesktopBlogSection> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: DesktopSectionsTitle(
            title: "Shelter Blog",
            titleColor: Colors.black,
            subTitle:
                "From latest news to team interviews, learn more about the\npassion that powers a Sonder.",
            subTitleColor: Colors.black45,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DesktopBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
                DesktopBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
                DesktopBlogContainer(
                    imageUrl:
                        "https://images.sonder.com/image/upload/q_auto:eco,c_scale,dpr_auto,f_auto,w_588/v1616609706/catalina/homepage/blog/next_step_in_future.jpg",
                    blogTitle: "The next step in travel's future",
                    blogUrl:
                        "https://blog.sonder.com/news/the-next-step-in-travels-future/"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              hoverColor: const Color(0xFFe7e7e7),
              onHover: (val) {
                setState(() {
                  isHover = val;
                });
              },
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 54,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: isHover ? Colors.black : Colors.black45,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Go to blog",
                  style: TextStyle(
                      color: isHover ? Colors.white : Colors.white,
                      fontSize: 16),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
