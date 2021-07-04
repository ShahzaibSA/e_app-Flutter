import 'package:e_app/FirstScreen.dart';
import 'package:e_app/productHistory.dart';
import 'package:e_app/products.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.green),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.account_circle_sharp,
                size: 30,
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
            drawerBtn("Home", Icon(Icons.home, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));},),
            drawerBtn("Products", Icon(Icons.shop, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Products()));},),
            drawerBtn("Favourites", Icon(Icons.favorite, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductHistory()));},),
          ],
        ),
        ),
      body: SingleChildScrollView(
              child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*1,
                  margin: EdgeInsetsDirectional.only(top: 10),
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  decoration: BoxDecoration(color: Color(0xfff5f5f5)
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 140,
                          color: Colors.black,
                        ),
                      ),
                      Container(padding: EdgeInsets.only(left: 7),
                        child: Column(children: [
                          Text("Shahzaib Ahmed".padRight(13),
                          style: TextStyle(
                            height: .5,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            ),),
                          Text("sashahzaibahmed@gmail.com".padLeft(14),
                          style: TextStyle(
                            height: 3.5,
                            fontSize: 15,
                            fontWeight:FontWeight.w700,
                          ),),
                          Text("logout".padRight(20),
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),),
                        ],),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Account Information",
                      style: TextStyle(
                        height: 2.5,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                      ),),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                              children: [
                              Text("Full Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              Icon(Icons.edit, size: 25,),
                              ],),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("Shahzaib Ahmed", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            ),
                            Row(children: [
                              Text("Email",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              ],),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("sashahzaibahmed@gmail.com", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            ),
                            Row(children: [
                              Text("Phone",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              ],),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("+92 3343582713", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            ),
                            Row(children: [
                              Text("Address",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              ],),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("Karachi, Pakistan", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            ),
                            Row(children: [
                              Text("Gender",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              ],),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("Male", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            ),
                            Row(children: [
                              Text("Date of Birth",
                              style: TextStyle(
                                height: 1.5,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                              ),),
                              ],),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(children: [
                                  Text("December 24, 1996", style: TextStyle(color: Color(0xff8c8c8c)),),
                                ],),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
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