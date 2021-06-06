import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Carousels_image extends StatelessWidget {
  List<Carousel>image;

  Carousels_image(
      this.image
      )
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
       images: [
          AssetImage('assets/images/rest/rest1.jpeg'),
          AssetImage('assets/images/rest/rest2.jpeg'),
          AssetImage('assets/images/rest/rest3.jpeg'),
          AssetImage('assets/images/rest/rest4.jpeg'),
          AssetImage('assets/images/rest/rest5.jpeg'),
        ],
        /*autoplay: true,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.blue,*/
      ),
    );
  }
}
