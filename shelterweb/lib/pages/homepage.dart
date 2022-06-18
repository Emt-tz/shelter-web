import 'package:flutter/material.dart';
import 'package:shelterweb/constants/pages.dart';
import 'package:shelterweb/pages/desktop/homepage.dart';
import 'package:shelterweb/pages/mobile/homepage.dart';
import 'package:shelterweb/pages/tablet/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      if(constraints.maxWidth<=mobile){
        return MobileHomePage();
      }else if (constraints.maxWidth>mobile && constraints.maxWidth<=tablet){
        return DesktopHomePage();
      }else{
        return DesktopHomePage();
      }
     },
      
    );
  }
}