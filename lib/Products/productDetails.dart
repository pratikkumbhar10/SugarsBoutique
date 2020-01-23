import 'package:flutter/material.dart';
import 'package:sugars/Components/drawer.dart';

class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsPicture;
  final productDetailsPrice;

  ProductDetails(
      {this.productDetailsName,
      this.productDetailsPicture,
      this.productDetailsPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new DrawerOnly(),
      appBar: new AppBar(
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
          new Container(
            height: 350,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.productDetailsPicture),
              ),
              footer: new Container(
                color: Colors.white54,
                child: ListTile(
                  leading: new Text(widget.productDetailsName,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  //trailing: Text("\$${widget.productDetailsPrice}", style: TextStyle(fontWeight: FontWeight.bold),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          '\$${widget.productDetailsPrice}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            color: Colors.grey,
          ),
          Divider(
            color: Colors.black12,
          ),

//*========The 1st Buttons Starts here(Size,Color,Quantity) =============

          Row(
            children: <Widget>[
              //The Size buttons

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //The Color buttons 2

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose Color"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //The Quantity buttons 3

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quanity"),
                            content: new Text("Select Quantity"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.3,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

//* ===== The Second Row of Button (Favourite,Buy,Add)==============

          new Row(
            children: <Widget>[
              //?Favourite Button

              new IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),

              //?BuyNow Button

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.pinkAccent,
                  elevation: 0.3,
                  child: new Text("Buy Now"),
                ),
              ),

              //?AddToCart Button

              new IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                ),
                onPressed: () {},
              ),
            ],
          ),

          Divider(),
          //*===ProductName====
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                child: new Text(
                  "Product Name:",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(padding: EdgeInsets.all(6),
              child: new Text(widget.productDetailsName),
              ),
            ],
          ),
          Divider(),
//*ProductBrand
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 6, 6, 6),
                child: new Text(
                  "Product Brand:",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(padding: EdgeInsets.all(6),
              child: new Text('Zaga'),
              ),
            ],
          ),
          Divider(),
//*======The Product Description Starts Here
          new ListTile(
            title: Text("Product Description:"),
            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            subtitle: new Text(
                "● Back pockets\n● Decorative side pickets\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with."),
          ),
          Divider(),
        ],
      ),
    );
  }
}
