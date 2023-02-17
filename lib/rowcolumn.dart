//Row And Column
import 'package:flutter/material.dart';
import 'package:untitled/iconbutton.dart';

void main() {
  runApp(MaterialApp(
    home: RowAndColumnScreen(),
  ));
}

class RowAndColumnScreen extends StatefulWidget {
  const RowAndColumnScreen({Key? key}) : super(key: key);

  @override
  State<RowAndColumnScreen> createState() => _RowAndColumnScreenState();
}

class _RowAndColumnScreenState extends State<RowAndColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row And Column"),
      ),
      body: Column(
          children: [
      Column(
      children: [
        TextButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => IconButtonScreen()));
        },
          child: Text("ten"),
        ),
        Column(
          children: [
            Text("One"),
            Text("One"),
            Text("One"),
            Text("One"),
          ],
        ),
    ]),
    ]),
    );
  }
}
