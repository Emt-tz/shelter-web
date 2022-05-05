import 'package:flutter/material.dart';

class DesktopSectionsTitle extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String subTitle;
  final Color subTitleColor;
  const DesktopSectionsTitle({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.subTitle,
    required this.subTitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: TextStyle(
            color: titleColor,
            fontSize: 40,
            height: 1.17,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SelectableText(
          subTitle,
          style: TextStyle(
            color: subTitleColor,
            fontSize: 18,
            height: 1.17,
          ),
        )
      ],
    );
  }
}
