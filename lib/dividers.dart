import 'package:flutter/material.dart';
import 'package:untitled/rowcolumn.dart';

void main() {
  runApp(MaterialApp(
    home: Dividersscreen(),
  ));
}

class Dividersscreen extends StatefulWidget {
  const Dividersscreen({Key? key}) : super(key: key);

  @override
  State<Dividersscreen> createState() => _DividersscreenState();
}

class _DividersscreenState extends State<Dividersscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Dividers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("back")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RowAndColumnScreen()));
                },
                child: Text("Thanuja")),
            Text("Divider screen"),
            Divider(
              //for column we use  dividers
              color: Colors.red,
              thickness: 2,
              indent: 10,
              endIndent: 30,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  Text("one"),
                  VerticalDivider(
                    //for rows we use verticaldividers
                    color: Colors.blue,
                    thickness: 10,
                    indent: 11,
                    endIndent: 20,
                  ),
                  Text("two"),
                  VerticalDivider(
                    color: Colors.blue,
                    thickness: 10,
                    indent: 11,
                    endIndent: 20,
                  ),
                  Text("three"),
                  VerticalDivider(
                    color: Colors.blue,
                    thickness: 10,
                    indent: 11,
                    endIndent: 20,
                  ),
                  Text("four"),
                  // VerticalDivider(
                  //   color: Colors.blue,
                  //   thickness: 10,
                  //   indent: 11,
                  //   endIndent: 20,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
