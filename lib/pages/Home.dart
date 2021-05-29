import 'package:flutter/material.dart';
import 'package:restos/widgets/carousel.dart';
import 'package:restos/widgets/classificationView.dart';

class MainPage extends StatelessWidget {
  List<int> sampleList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Carousels_image();

    return Scaffold(
        appBar: new AppBar(
          title: Text(
            'RESTOSOF',
          ),
        ),
        body: Column(
          children: <Widget>[
            image_carousel,
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: sampleList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ClassififationsView();
              },
            )),
          ],
        ));
  }
}
