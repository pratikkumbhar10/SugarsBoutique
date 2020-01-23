import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:sugars/Components/drawer.dart';

import 'package:sugars/HomePage/horizListView.dart';
import 'package:sugars/HomePage/HomePageBottomView.dart';
//import 'package:sugars/Components/drawer.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          //Image.network("https://www.celestino.gr/custom/defaultpage/1-MAINLESA-ENG_MOB.jpg"),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 4.0,
      ),
    );

    return new Scaffold(


      drawer: new DrawerOnly(),
      appBar: new AppBar(
        elevation: 0.1,
        title: Center(
          child: Text(
            'Sugars Boutique',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),


      body: new ListView(
        children: <Widget>[
          imageCarousel,
          //creating new padding
          new Padding(
            padding: EdgeInsets.all(0),
          ),

          // horizontal list is beginning from here
          
          HorizonList(),

        //bottom list view start here

        Container(
          height: 450.0,
          //width: 50,
          child: BottomListView(),
        ),
        
        //imageCarousel

        


        

        ],
      ),
    );
  }
}