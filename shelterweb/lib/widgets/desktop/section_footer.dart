import 'package:flutter/material.dart';

class DesktopFooterSection extends StatefulWidget {
  const DesktopFooterSection({Key? key}) : super(key: key);

  @override
  _DesktopFooterSectionState createState() => _DesktopFooterSectionState();
}

class _DesktopFooterSectionState extends State<DesktopFooterSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          "Shelter on Demand",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [
                SelectableText(
                  "Company",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: const [
                SelectableText(
                  "Support",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: const [
                SelectableText(
                  "Social",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: const [
                SelectableText(
                  "Language",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                SelectableText(
                  "Currency",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Row(
          children: const [
            //copyright
            SelectableText(
                "\u00a9 2022 Shelter on Demand Inc. All rights reserved."),
            Spacer(),
            SelectableText("+1 617-300-0956"),
            SizedBox(width: 30,),
            SelectableText("Terms of Service"),
            SizedBox(width: 30,),
            SelectableText("Privacy Policy"),
          ],
        )
      ],
    );
  }
}
