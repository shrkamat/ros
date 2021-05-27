import 'package:flutter/material.dart';
import 'package:restos/widgets/itemsView.dart';

class Classififations extends StatelessWidget {
  int photoindex = 0;
  List<String> photos = [
    'assets/images/soups/veg/clearsoup.jpeg',
    'assets/images/soups/veg/cornsoup.jpeg',
    'assets/images/soups/veg/manchowsoup.jpeg',
    'assets/images/soups/nonveg/chickennoodlessoup.jpeg',
    'assets/images/soups/nonveg/eggsoup.jpeg',
    'assets/images/soups/nonveg/seafoodsoup.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(padding: EdgeInsets.only(left: 10),
          child: Container(
            height: 230.0,
            // color: Colors.grey,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Items()),
                        );
                      },
                      child: Container(
                        child: Text(
                          'SOUPS',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 180.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: photos.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 140.0,
                          child: Card(
                            child: Image.asset(photos[index], fit: BoxFit.fill),
                          ),
                        );
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
