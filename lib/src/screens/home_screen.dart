import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  bool isLightOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traffic Light System'),
      ),
      body: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isLightOn ? Colors.red : Colors.grey,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isLightOn ? Colors.yellow : Colors.grey,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isLightOn ? Colors.green : Colors.grey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Stop'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Ready to Go'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Go'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Ready to Stop'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
