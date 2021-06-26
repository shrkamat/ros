import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restos/models/data.dart';
import 'package:restos/config/constants.dart' as Constants;
import 'package:cached_network_image/cached_network_image.dart';

class ItemView extends StatelessWidget {
  final Item item;

  const ItemView(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.ITEM_VIEW_WIDTH,
      child: Column(
        children: [
          Container(
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl: item.img,
                  fit: BoxFit.fill,
                  width: Constants.ITEM_VIEW_WIDTH,
                  height: Constants.ITEM_VIEW_HEIGHT,
                ),
              ),
            ),
          ),
          SizedBox(
            width: Constants.ITEM_VIEW_WIDTH - 20,
            child: Text(
              item.name,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
