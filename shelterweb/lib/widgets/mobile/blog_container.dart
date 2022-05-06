import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MobileBlogContainer extends StatefulWidget {
  final String imageUrl;
  final String blogTitle;
  final String blogUrl;
  const MobileBlogContainer(
      {Key? key,
      required this.imageUrl,
      required this.blogTitle,
      required this.blogUrl})
      : super(key: key);

  @override
  _MobileBlogContainerState createState() => _MobileBlogContainerState();
}

class _MobileBlogContainerState extends State<MobileBlogContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          width: 360,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.imageUrl),
            ),
          ),
        ),
        SelectableText(widget.blogTitle),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            if (kDebugMode) {
              print(widget.blogUrl);
            }
          },
          child: const Text(
            "Continue reading",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
