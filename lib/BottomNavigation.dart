import 'package:e_app/FirstScreen.dart';
import 'package:e_app/productHistory.dart';
import 'package:e_app/products.dart';
import 'package:e_app/profile.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 1;

  Widget currentScreen = FirstScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(67.0), // here the desired height
      //         child: AppBar(
      //     centerTitle: true,
      //     flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [Colors.purple, Colors.red],
      //           begin: Alignment.bottomRight,
      //           end: Alignment.topLeft
      //         )
      //       ),
      //     ),
      //     title: Column(children: [
      //         Container(
      //           padding: EdgeInsets.only(top: 15),
      //           child: Text("Calculator", 
      //             style: TextStyle(
      //               fontSize: 24,
      //               fontWeight: FontWeight.bold,
      //               letterSpacing: 1,     
      //             ),),
      //         ),
      //         Text("---------"),
      //       ],),  
      //   ),
      // ),
      // backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        child: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //       colors: [Colors.purple, Colors.red],
          //       begin: Alignment.bottomRight,
          //       end: Alignment.topLeft
          //     )
          // ),
          padding: EdgeInsets.only(top: 2, bottom: 2),
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                  color: currentTab == 1 ? Colors.white : Colors.transparent,
                  ),
                  child: MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(() {
                          currentScreen = FirstScreen();
                          currentTab = 1;
                        });
                      },
                      child: Icon(Icons.home, size: 30,
                          color: currentTab == 1 ? Colors.purple : Colors.grey)),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                  color: currentTab == 2 ? Colors.white : Colors.transparent,
                  ),
                  child: MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Products();
                          currentTab = 2;
                        });
                      },
                      child: Icon(Icons.shop, size: 30,
                          color: currentTab == 2 ? Colors.purple : Colors.grey)),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                  color: currentTab == 3 ? Colors.white : Colors.transparent,
                  ),
                  child: MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProductHistory();
                          currentTab = 3;
                        });
                      },
                      child: Icon(Icons.favorite_sharp, size: 30,
                          color: currentTab == 3 ? Colors.purple : Colors.grey)),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                  color: currentTab == 4 ? Colors.white : Colors.transparent,
                  ),
                  child: MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 4;
                        });
                      },
                      child: Icon(Icons.account_circle_sharp, size: 30,
                          color: currentTab == 4 ? Colors.purple : Colors.grey)),
                ),
              ]),
        ),
      ),
    );
  }
}