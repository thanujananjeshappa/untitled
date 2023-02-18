import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FlexibleScreen()));
}

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.cyan,
              // width: double.infinity,
              // child: Text("Thanuja"),
            )),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            color: Colors.blue,
            // width: double.infinity,
              ),
            ),
            // child: Text("abcd"),


      ],
    ));
  }
}
