import 'package:e_app/Categories.dart';
import 'package:e_app/MoreItems.dart';
import 'package:e_app/productHistory.dart';
import 'package:e_app/products.dart';
import 'package:e_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  List <dynamic> featuredProducts = [
    "https://fdn.gsmarena.com/imgroot/reviews/20/apple-iphone-12-pro-max/lifestyle/-1024w2/gsmarena_006.jpg",
    "https://cdn.mos.cms.futurecdn.net/bZFYPdmpQngxkDNCG3a7HC-970-80.jpg.webp",
    "https://cdn.mos.cms.futurecdn.net/7PnHfuU8RNxFiGRGL3h9fQ.jpg",
    "https://www.techrepublic.com/a/hub/i/r/2021/01/11/9e5d9443-fde4-4acb-95e6-c7c6625f011f/resize/1200x/8272aeb839c6e406160043b931ed07ac/alienware-m15-r4-and-m17-r4.jpg",
    "https://nikonrumors.com/wp-content/uploads/2020/07/Nikon-Nikkor-Z-lens-roadmap-July-20202-550x354.jpg",
  ];

  List <dynamic> productName = [
    "iPhone 12 Pro Max",
    "Samsung S20 Ultra",
    "MacBook Air Pro ",
    "AlienWare 2021",
    "Nikon D8000",
  ];

    List <dynamic> categoriesName = [
    "Electronics",
    "Lifestyle",
    "Grocery",
    "Sports",
    "Fashion"
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.home,
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
            drawerBtn("Profile", Icon(Icons.account_circle, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Profile()));},),
            drawerBtn("Products", Icon(Icons.shop, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Products()));},),
            drawerBtn("Favourites", Icon(Icons.favorite, color: Colors.white,), (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductHistory()));},),
          ],
        ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 7),
                      padding: EdgeInsets.only(top:18, bottom: 25, left: 18, right: 18),
                      color: Colors.grey[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Items", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                          Text("View More", 
                          style: TextStyle(fontSize: 21, 
                          fontWeight: FontWeight.w700, color: Colors.purple),),
                        ],),),
            Container(
              // margin: EdgeInsets.only(top: 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 255,
                  aspectRatio: 16/9,
                  viewportFraction: 0.95,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: featuredProducts.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(i),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 45),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 100,
                  aspectRatio: 16/9,
                  viewportFraction: 0.95,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: productName.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width*1,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('$i', style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700
                              ),),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 17, color: Colors.yellow),
                                  Icon(Icons.star, size: 17, color: Colors.yellow),
                                  Icon(Icons.star, size: 17, color: Colors.yellow),
                                  Icon(Icons.star, size: 17, color: Colors.yellow),
                                  Icon(Icons.star, size: 17, color: Colors.yellow),
                                  SizedBox(width: 8,),
                                  Text('5 Rating (23 Reviews)', style: TextStyle(
                                  wordSpacing: 1,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700
                                  ),),
                                ],
                              ),
                          ],
                        )
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(child: Text("More Categories",
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
                    margin: EdgeInsets.only(top: 5, bottom: 15,),),
                    Container(child: Icon(Icons.more),)
                  ],
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    categories("Electronics", Icon(Icons.flash_on,size: 32,color: Colors.purple,)),
                    categories("All Fashion", Icon(Icons.auto_awesome,size: 32,color: Colors.purple,)),
                    categories("Lifestyle", Icon(Icons.king_bed,size: 32,color: Colors.purple,)),
                    categories("Groceries", Icon(Icons.healing,size: 32,color: Colors.purple,)),
                    categories("Automotive", Icon(Icons.motorcycle,size: 32,color: Colors.purple,)),
                  ],),)
            ],),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[0])),
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[1])),
              ],),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[2])),
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[3])),
              ],),
            ),
                        Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[4])),
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[0])),
              ],),
            ),
                        Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[3])),
                  Container(
                    width: MediaQuery.of(context).size.width*0.47,
                    child: moreItem(featuredProducts[1])),
              ],),
            )
            
            
            
          ],),
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