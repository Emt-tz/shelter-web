import 'package:flutter/material.dart';
import 'package:shelterweb/pages/desktop/homepage.dart';
import 'package:shelterweb/pages/mobile/homepage.dart';
import 'package:shelterweb/pages/tablet/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //responsive break points
  final double desktop = 1920;
  final double tablet = 1400;
  final double mobile = 480;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      if(constraints.maxWidth<=mobile){
        return MobileHomePage();
      }else if (constraints.maxWidth>mobile && constraints.maxWidth<=tablet){
        return Center(child: Text("Not optimized for Tablets"));
      }else{
        return DesktopHomePage();
      }
     },
      
    );
  }
}