import 'package:flutter/material.dart';

class MobileCitiesWidget extends StatefulWidget {
  final String cityName;
  final String defaultImage;
  final int neighbourhoods;
  const MobileCitiesWidget(
      {Key? key,
      required this.cityName,
      required this.defaultImage,
      required this.neighbourhoods})
      : super(key: key);

  @override
  _MobileCitiesWidgetState createState() => _MobileCitiesWidgetState();
}

class _MobileCitiesWidgetState extends State<MobileCitiesWidget> {
  double elevation = 4.0;
  double scale = 1.0;
  Offset translate = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          onHover: (value) {
           
            // if (value) {
            //   setState(() {
            //     elevation = 1.0;
            //     scale =1.05;
            //     translate = Offset(2, 2);
            //   });
            // } else {
            //   setState(() {
            //     elevation = 1.0;
            //     scale = 1.0;
            //     translate = Offset(0, 0);
            //   });
            // }
          },
          child: Transform.translate(
            offset: translate,
            child: Transform.scale(
              scale: scale,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.defaultImage),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text("${widget.neighbourhoods} NEIGHBORHOODS"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            widget.cityName,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
    ;
  }
}
