import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restos/models/data.dart';

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Container(
            // width:140,

            child: Card(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    item.img,
                    fit: BoxFit.fill,
                    width: 140,
                    height: 100,
                  )),
            ),
          ),
          SizedBox(
              width: 120, child: Text(item.name, textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
