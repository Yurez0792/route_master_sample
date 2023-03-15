import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.amberAccent,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(color: Colors.blueAccent)),
              Expanded(child: Container(color: Colors.yellowAccent)),
            ],
          ),
          const Center(child: Text('Home', style: TextStyle(fontSize: 30, color: Colors.lightGreenAccent))),
        ]),
      );
}
