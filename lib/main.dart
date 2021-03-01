import 'package:flutter/material.dart';
import 'package:reuse_reduce_recycle/componens/rounded_box.dart';
import 'package:reuse_reduce_recycle/componens/rounded_search_field.dart';

void main(){
  runApp(new MaterialApp(
  title: "FourGreen Company",
  home: new R(),
  ));
}

class R extends StatefulWidget{
  @override
  _RState createState() => _RState();
}

class _RState extends State<R>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          RoundedSearchField(),
          new IconButton(
              icon: new Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: new Icon(
                Icons.mark_chat_unread_outlined,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: new Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: new Column(
          children: <Widget>[
            Image.asset(
              "img/tree.png",
              width: 75.0,
            ),
            new Text(
              "3R",
              style: new TextStyle(fontSize: 20.0, color: Colors.green),
            ),
            new Image.asset(
              "img/hidroponik.jpg",
              width: 300.0,
              height: 300.0,
            ),
            new Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 35)),
                SizedBox(
                  height: size.height * 0.05,
                ),
                RoundedButton(
                  text: "Tips&Trik",
                  press: () {},
                ),
                RoundedButton(
                  text: "Sejarah",
                  press: () {},
                ),
              ],
            ),
            new Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.00,
                ),
                RoundedButton2(
                  text: "Kelebihan&Kekurangan",

                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "FourGreen Company",
        debugShowCheckedModeBanner: false,
        home: R());
  }
}