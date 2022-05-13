// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DesktopGallerySection extends StatefulWidget {
  final String defaultimage;
  final String sideimage1;
  final String sideimage2;
  const DesktopGallerySection(
      {Key? key,
      required this.defaultimage,
      required this.sideimage1,
      required this.sideimage2})
      : super(key: key);

  @override
  _DesktopGallerySectionState createState() => _DesktopGallerySectionState();
}

class _DesktopGallerySectionState extends State<DesktopGallerySection> {
  static const double kheight = 480;

  @override
  Widget build(BuildContext context) {
    double kwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: kheight,
              width: kwidth * 0.7,
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                image: DecorationImage(
                    image: NetworkImage(widget.defaultimage),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 100,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "View all",
                        style: TextStyle(fontSize: 16,letterSpacing: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: kheight,
          width: kwidth * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: kheight / 2.1,
                width: kwidth * 0.28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.sideimage1),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                height: kheight / 2.1,
                width: kwidth * 0.28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.sideimage2),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
