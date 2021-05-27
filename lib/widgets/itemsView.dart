import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var itemList=[{
       "name":"chicken noodles soup",
       "picture":"assets/images/soups/nonveg/chickennoodlessoup.jpeg",
     },
       {
         "name":"cream of chicken soup",
         "picture":"assets/images/soups/nonveg/creamofchicken.jpeg",
       },
       {
         "name":"Egg Soup soup",
         "picture":"assets/images/soups/nonveg/eggsoup.jpeg",

       },
       {
         "name":"Manchow soup",
         "picture":"assets/images/soups/nonveg/manchow.jpeg",
       },
       {
         "name":"SeaFood soup",
         "picture":"assets/images/soups/nonveg/seafoodsoup.jpeg",
       },
     ];
    return Scaffold(
       appBar: new AppBar(
        title: Text(
          'RESTOSOF',
        ),
        backgroundColor: Colors.black,
      ),
      body:Container(

      )
    );
  }
}
