import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomListView extends StatefulWidget {
  @override
  _BottomListViewState createState() => _BottomListViewState();
}

class _BottomListViewState extends State<BottomListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 500,
      child: ListView(
        //scrollDirection: Axis.vertical,
        children: <Widget>[
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/9-TENTEN-ENG.jpg',
          ),
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/12-BSS-ENG.jpg',
          ),
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/8-POY-ENG.jpg',
          ),
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/10-EXDIC-ENG.jpg',
          ),
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/4-HOM-ENG.jpg',
          ),
          HotDeals(
            imageLocation:
                'https://www.celestino.gr/custom/defaultpage/5-UNN-ENG.jpg',
          )
        ],
      ),
    );
  }
}

class HotDeals extends StatelessWidget {
  final imageLocation;

  HotDeals({this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: ListTile(
            title: Image.network(
              imageLocation,
              //color: Colors.red,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          // decoration: new BoxDecoration(color: Colors.white)
        ),
      ),
    );
  }
}
