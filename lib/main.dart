// import 'package:eapp/bottomNavigationBar.dart';
import 'package:e_app/BottomNavigation.dart';
import 'package:e_app/FirstScreen.dart';
import 'package:flutter/material.dart';
import 'package:e_app/products.dart';
import 'package:e_app/profile.dart';
import 'package:e_app/productHistory.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: BottomNavigation()),
    );
  }
}


