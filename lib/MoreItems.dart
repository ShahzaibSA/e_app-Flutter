import 'package:flutter/material.dart';

Widget moreItem(image){
  return          Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(bottom:15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(image)),
                        ),
                        Container(child: Text("Iphone 12", 
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700
                        ),),),
                        Row(children: [
                        Icon(Icons.star, size: 17, color: Colors.yellow,),
                        Icon(Icons.star, size: 17, color: Colors.yellow,),
                        Icon(Icons.star, size: 17, color: Colors.yellow,),
                        Icon(Icons.star, size: 17, color: Colors.yellow,),
                        Icon(Icons.star, size: 17, color: Colors.yellow,),
                        SizedBox(height: 25, width: 10,),
                        Container(child: Text("23 Reviews"),),
                        ],)
                      ],
                    ),
                  );
  
}


