//Expanded Screen
import 'package:flutter/material.dart';
void main(){
  home: runApp(MaterialApp(
    home: ExpandedScreen(),
  ));
}
class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
        children: <Widget>[

          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Text("Expanded"),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
