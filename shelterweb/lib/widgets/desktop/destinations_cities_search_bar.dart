// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DesktopDestinationsCitiesSearchBar extends StatefulWidget {
  const DesktopDestinationsCitiesSearchBar({Key? key}) : super(key: key);

  @override
  _DesktopDestinationsCitiesSearchBarState createState() =>
      _DesktopDestinationsCitiesSearchBarState();
}

class _DesktopDestinationsCitiesSearchBarState
    extends State<DesktopDestinationsCitiesSearchBar> {
  late TextEditingController textController1;
  late TextEditingController textController2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                controller: textController1,
                onChanged: (_) => {},
                //autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'New Orleans',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: TextFormField(
                    controller: textController2,
                    onChanged: (_) => {},
                    //autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Address or Area',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: InkWell(
                onTap:(){},
                borderRadius: BorderRadius.circular(30),
                hoverColor: Colors.white,
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Text(
                          'Check  in',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Text(
                          'Check out',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Text(
                        'Guests',
                      ),
                    ),
                    InkWell(
                      onTap:(){},
                borderRadius: BorderRadius.circular(30),
                hoverColor: Colors.white,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Text(
                        '1',
                      ),
                    ),
                    InkWell(
                      onTap:(){},
                borderRadius: BorderRadius.circular(30),
                hoverColor: Colors.white,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: InkWell(
                  onTap:(){},
                borderRadius: BorderRadius.circular(30),
                hoverColor: Colors.white,
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Price',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: InkWell(
                  onTap:(){},
                borderRadius: BorderRadius.circular(30),
                hoverColor: Colors.white,
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Filters',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
