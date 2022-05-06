import 'dart:math';

import 'package:flutter/material.dart';

class DesktopTestimonialContainer extends StatefulWidget {
  final String title;
  final String author;
  final String location;
  const DesktopTestimonialContainer(
      {Key? key,
      required this.title,
      required this.author,
      required this.location})
      : super(key: key);

  @override
  _DesktopTestimonialContainerState createState() =>
      _DesktopTestimonialContainerState();
}

class _DesktopTestimonialContainerState
    extends State<DesktopTestimonialContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 360,
      padding: const EdgeInsets.all(50),
      decoration: const BoxDecoration(
        color: Color(0xFFe6e6e6),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SelectableText(
            widget.title,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
          const Spacer(),
          SelectableText(
            widget.author,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            widget.location,
            style: const TextStyle(color: Colors.black54),
          ),
          const Spacer(),
        ],
      ),
    );
    ;
  }
}
