import 'package:flutter/material.dart';

Widget categories(var name, icon){
  return Container(
          width: 200,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 7.0, right: 7.0),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(7),   
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            icon,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("$name", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              SizedBox(height: 5,),
              Text("125 Items"),
            ],)
          ],),
        );
}