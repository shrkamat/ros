import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restos/models/data.dart';
import 'package:restos/widgets/itemView.dart';

class ClassificationView extends StatelessWidget {
  final Classification classification;

  ClassificationView(this.classification);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
            height: 200.0,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(7.0, 7.0, 0.0, 6.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          classification.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ],
              ),
              //Column(
              // children: <Widget>[
              Container(
                height: 140.0,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: classification.itemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemView(classification.itemList[index]);
                  },
                ),
              ),
            ]),
          )),
    ]);
  }
}
