import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restos/models/data.dart';

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140.0,
        child: Card(
          child: Image.asset(item.img),
        ));
  }
}
