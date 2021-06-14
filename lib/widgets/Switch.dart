import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  SwitchWidgetClass createState() => new SwitchWidgetClass();
}

class SwitchWidgetClass extends State {
  bool switchControl = false;
  var textHolder = 'Veg only';

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Veg Only';
      });
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
        // textHolder = 'Switch is OFF';
      });
      // Put your code here which you want to execute on Switch OFF event.
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
          ]),
    );
  }
}
