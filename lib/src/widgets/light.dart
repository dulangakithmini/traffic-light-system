import 'package:flutter/material.dart';

class Light extends StatelessWidget {
  Color color;
  bool isOn;

  Light({this.color, this.isOn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isOn ? color : Colors.grey,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
