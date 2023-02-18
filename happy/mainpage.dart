//Drawer
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff9cd9d0),
            //
            // appBar: AppBar(
            //   backgroundColor: Color(0xff9cd9d0),
            // ),
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 50, width: 50, color: Color(0xff9cd9d0)),
                      ),
                    ]),
                    Container(
                        height: 70,
                        // width: 100,
                        // alignment: Alignment.center,
                        // color: Colors.grey,
                        child: Center(
                            child: Text(
                          "Welcome",
                          textScaleFactor: 3.7,
                          style: TextStyle(letterSpacing: 1),
                        ))),
                    SizedBox(
                      height: 15,
                      width: 10,
                    ),
                    Text(
                      "Continue as...",
                      textScaleFactor: 2,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 10, width: 10, color: Color(0xff9cd9d0)),
                      ),
                    ]),
                    Row(

                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment:MainAxisAlignment.center,

                        children: [
                          Image.asset('images/mainpage.png'),
                        ]),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "         Student User          ",
                          textScaleFactor: 2,
                          style: TextStyle(height: 3, letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          elevation: 10,
                          shadowColor: Colors.black,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "           Tuter User            ",
                          textScaleFactor: 2,
                          style: TextStyle(height: 3, letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          elevation: 10,
                          shadowColor: Colors.black,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "          Admin User           ",
                          textScaleFactor: 2,
                          style: TextStyle(height: 3, letterSpacing: 1),
                          textAlign: TextAlign.start,
                        ),
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.green,
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          elevation: 10,
                          shadowColor: Colors.black,
                        )),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Icon(Icons.keyboard_double_arrow_left_sharp),
                        Text("Back",textScaleFactor: 1.5,)
                      ],
                    )
                  ]),
            )));
  }
}
