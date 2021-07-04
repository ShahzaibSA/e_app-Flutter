// import 'dart:html';

import 'package:e_app/FirstScreen.dart';
import 'package:e_app/products.dart';
import 'package:e_app/profile.dart';
import 'package:flutter/material.dart';

class ProductHistory extends StatefulWidget {
  const ProductHistory({ Key? key }) : super(key: key);

  @override
  _ProductHistoryState createState() => _ProductHistoryState();
}

class _ProductHistoryState extends State<ProductHistory> {
  List <dynamic> productName = [
    "iPhone 3gs",
    "iPhone 5s",
    "iPhone 6s Plus",
    "iPhone 8 Plus",
    "iPhone XS Max",
    "iPhone 12 Pro Max",
  ];
  var productPrice = [
    "\$ 189",
    "\$ 379",
    "\$ 469",
    "\$ 799",
    "\$ 999",
    "\$ 1259",
  ];
  var productImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTifM-b1g6rb8Ai7qpl5mrj65OWnPBj2agoEA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAJ0Co5hZzF5NgVGn-X1HFxj3MBORjiEaH-A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLnd6rX8lcwgUhvVRBQZNWxdKqdyEAF09JVw&usqp=CAU",
    "https://9to5mac.com/wp-content/uploads/sites/6/2018/04/red-iphone-8-plus.jpg?quality=82&strip=all&w=1600 ",
    "https://leronza.com/wp-content/uploads/2020/01/IMG-20190815-WA0005_1800x1800.jpg",
    "https://static-01.daraz.pk/p/b2d55ebe425ddef6268d39ca0228c68a.jpg",
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Searched Products", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.search_sharp,
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
            drawerBtn("Products", Icon(Icons.shop, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Products()));},),
          ],
        ),
        ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 30, left: 15, right: 15),
            child: TextField( 
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                filled: true,
                fillColor: Color(0xfff2f2f2),
                hintText: 'Enter Product Name',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),

          Container(
            
            padding: EdgeInsets.only(top: 80, bottom: 20),
            child: ListView.builder(
              itemCount: productImages.length,
              itemBuilder: (context, index){
                return products(productImages[index], productName[index], productPrice[index]);
              }
              ),
          ),
        ],
      )
    ),
    );

  }
}

Widget products(var image, name, price){
  return 
  Container(
    margin: EdgeInsetsDirectional.only(top: 7, bottom: 3, start: 7, end: 7),
    padding: EdgeInsetsDirectional.only(top: 7, bottom: 5),
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