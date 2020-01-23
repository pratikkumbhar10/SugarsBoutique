
import 'package:flutter/material.dart';
import 'package:sugars/HomePage/HomePage.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var icolor = Colors.pinkAccent;
        return  new Drawer(
            child: new ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                // header
                new UserAccountsDrawerHeader(
                  otherAccountsPictures: <Widget>[],
                  accountName: Text(
                    'Pratik Kumbhar',
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    'pratikkumbhar10@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                  decoration: new BoxDecoration(color: Colors.pinkAccent),
                ),
                // body
                InkWell(
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home, color: icolor),
                  ),
                ),
    
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.dashboard, color: icolor),
                  ),
                ),
    
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Wishlist'),
                    leading: Icon(
                      Icons.favorite,
                      color: icolor,
                    ),
                  ),
                ),
    
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket, color: icolor),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: icolor),
              ),
            ),

            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.lightBlue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.info, color: Colors.lightGreen),
              ),
            ),
          ],
        ),
      );
  }
}