import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:restos/widgets/carousel.dart';
import 'package:restos/widgets/classificationView.dart';
import 'package:restos/widgets/itemsView.dart';

import '../main.dart';

/*void main() {
  runApp(new MaterialApp(
    home: MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}*/

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Carousels();
    return Scaffold(
        appBar: new AppBar(
          title: Text(
            'RESTOSOF',
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: <Widget>[
            image_carousel,
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Classififations();
              },
            )),
          ],
        ));
  }
}
