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
            height: 230.0,
            // color: Colors.grey,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          classification.name,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Icon(Icons.arrow_right_sharp),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 180.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: classification.itemList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemView(classification.itemList[index]);
                      },
                    ),
                  )
                ],
              )
            ]),
          )),
    ]);
  }
}
