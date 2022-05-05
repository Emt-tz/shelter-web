import 'package:flutter/material.dart';

class DesktopCitiesWidget extends StatelessWidget {
  final String cityName;
  final String defaultImage;
  final int neighbourhoods;
  const DesktopCitiesWidget(
      {Key? key,
      required this.cityName,
      required this.defaultImage,
      required this.neighbourhoods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(defaultImage),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text("$neighbourhoods NEIGHBORHOODS"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(cityName,style: const TextStyle(fontSize: 18),),
        ),
      ],
    );
  }
}
