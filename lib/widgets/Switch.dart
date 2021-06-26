import 'package:flutter/material.dart';

import 'package:restos/config/constants.dart' as Constants;

class SwitchWidget extends StatefulWidget {
  @override
  SwitchWidgetClass createState() => new SwitchWidgetClass();
}

class SwitchWidgetClass extends State {
  bool switchControl = false;
  bool isveg = true;
  var textHolder = 'Veg only';

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Veg Only';
      });
    } else {
      setState(() {
        switchControl = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            '$textHolder',
            style: TextStyle(fontSize: 10),
          ),
          Transform.scale(
              scale: 1,
              child: Switch(
                onChanged: toggleSwitch,
                value: switchControl,
                activeColor: Colors.blue,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey,
              )),
        ],
      ),
    );
  }
}
