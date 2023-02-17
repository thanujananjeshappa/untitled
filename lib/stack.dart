//Stack
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackScreen()));
}
class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Stack 1"),
                  Text("Stack 1"),
                  Text("Stack 1"),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 110,
                width: 110,
                color: Colors.indigo,
              ),
            ),
            Align(
              alignment: Alignment(-0.1, 0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ),
            Align(
              alignment: FractionalOffset(0.2, 0.2),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Positioned(
                // right: 100,
                // top: 100,
                // left: 100,
                bottom: 10,
                child: Container(
                  color: Colors.black,
                  height: 150,
                  width: 150,
                ))
          ],
        ),
      ),
    );
  }
}
