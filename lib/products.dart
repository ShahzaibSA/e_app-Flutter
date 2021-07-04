// import 'dart:html';

import 'package:e_app/productHistory.dart';
import 'package:e_app/profile.dart';
import 'package:e_app/FirstScreen.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productName = [
    "iPhone 3gs",
    "iPhone 4s",
    "iPhone 5s",
    "iPhone 6s Plus",
    "iPhone 7 Plus",
    "iPhone 8 Plus",
    "iPhone XS Max",
    "iPhone 11 Pro Max",
    "iPhone 12 Pro Max",
    // "null",
  ];
  var productPrice = [
    "\$ 189",
    "\$ 219",
    "\$ 379",
    "\$ 469",
    "\$ 689",
    "\$ 799",
    "\$ 999",
    "\$ 1199",
    "\$ 1259",
    // "null"
  ];
  var productImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTifM-b1g6rb8Ai7qpl5mrj65OWnPBj2agoEA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1q84iYIW9RTe6p15yaeBCPWdV4OYkqc3PQdJMJ_bAyaGiDijVme5H--y5nasl8rIrlSc&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAJ0Co5hZzF5NgVGn-X1HFxj3MBORjiEaH-A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLnd6rX8lcwgUhvVRBQZNWxdKqdyEAF09JVw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqtZF2CefmPm5Kr52n4SmcMnV0xvBSdndQQYQq1-8_33S03BlrGbHgTFfpC-atzfYSFUg&usqp=CAU",
    "https://9to5mac.com/wp-content/uploads/sites/6/2018/04/red-iphone-8-plus.jpg?quality=82&strip=all&w=1600 ",
    "https://leronza.com/wp-content/uploads/2020/01/IMG-20190815-WA0005_1800x1800.jpg",
    "https://assets.swappie.com/iPhone-11-Pro-midnight-green-back.png",
    "https://static-01.daraz.pk/p/b2d55ebe425ddef6268d39ca0228c68a.jpg",
    // "null",
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("All Products", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.red),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.phone_android,
                size: 26,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                padding: EdgeInsets.only(right: 40),
                child: Image.asset('assets/header.png'),
              )
            ),
            drawerBtn("Profile", Icon(Icons.account_circle_sharp, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Profile()));},),
            drawerBtn("Home", Icon(Icons.home, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));},),
            drawerBtn("Favourites", Icon(Icons.favorite, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductHistory()));},),
          ],
        ),
        ),
      body: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: ListView.builder(
          itemCount: productImages.length,
          itemBuilder: (context, index){
            return products(productImages[index], productName[index], productPrice[index]);
          }
          ),
      )
    ),
    );

  }
}

Widget products(var image, name, price){
  return 
  Container(
    margin: EdgeInsetsDirectional.only(top: 3, bottom: 3, start: 7, end: 7),
    padding: EdgeInsetsDirectional.only(top: 5, bottom: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Color(0xffcfcfcf),),
      color: Colors.white, //background color of box
        boxShadow: [
          BoxShadow(
            color: Color(0xffe0e0e0),
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              10.0, // Move to right 10  horizontally
              10.0, // Move to bottom 10 Vertically
            ),
          )
        ],
    ),
    child: ListTile(
      minVerticalPadding: 5,
      leading:ClipOval(
        child: Image.network(image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(name,   
      style: TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 17),
      ),
      subtitle: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow,), 
                  Text("5.0 (23 Reviews)".padLeft(17), 
                  style: TextStyle(height: 2.3),
                  ),
                ],
              ),
              Row(children: [
              Text("20 Pieces"), 
              Text(price.padLeft(8),
               style: TextStyle(
                color: Colors.purple,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
              ],),
              Text("Quantity: 1".padRight(22),
              style: TextStyle(height: 1.5),
              ), 
            ],
          ),
        ],
      ),
    ),
  );
}

Widget drawerBtn(var name, icon, navigate){
  return Container(
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(
            color: const Color(0xFF000000),
            width: 4.0,
            style: BorderStyle.solid), 
      borderRadius: BorderRadius.all(Radius.circular(30),), //BorderRadius.all
    ),
    child: ListTile(
      title: Text("$name", style: TextStyle(color: Colors.white),),
      trailing: icon,
      onTap: navigate,
      // onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Profile()));},
    ),
  );
}
