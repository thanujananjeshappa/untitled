import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: WrapScreen(),
  ));
}

class WrapScreen extends StatefulWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  // final math.Random
  final rnd = math.Random();

  Color getRandomColor() => Color(rnd.nextInt(0xff4287f5));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wrap Widget"),
        ),
        body: Wrap(
            alignment: WrapAlignment.end,
            // crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 10.0, // gap between adjacent chips
            runSpacing: 10.0, // gap between lines
            children: <Widget>[
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("One"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Two"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Three"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Four"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Five"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Six"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Seven"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Eight"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Nine"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Ten"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("One"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Two"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Three"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Four"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Five"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Six"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Seven"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Eight"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Nine"))),
              Container(
                  height: 50,
                  width: 100,
                  color: getRandomColor(),
                  child: Center(child: Text("Ten"))),
            ]));
  }
}
