import 'package:flutter/material.dart';
import 'package:restos/models/data.dart';
import 'package:restos/widgets/carousel.dart';
import 'package:restos/widgets/classificationView.dart';

class MainPage extends StatelessWidget {
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
            ClassificationListView(classificationList: fetchData()),
          ],
        ));
  }
}

class ClassificationListView extends StatelessWidget {
  final List<Classification> classificationList;

  const ClassificationListView({
    Key? key,
    required this.classificationList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: classificationList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ClassificationView(classificationList[index]);
      },
    ));
  }
}
