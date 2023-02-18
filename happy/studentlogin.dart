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
                            height: 80, width: 50, color: Color(0xff9cd9d0)),
                      ),
                    ]),
                    Container(
                      height: 70,
                      // width: 100,
                      // alignment: Alignment.center,
                      // color: Colors.grey,
                      child: Row(children: [
                        Text(
                          "  Hello",
                          textScaleFactor: 3.7,
                          style: TextStyle(letterSpacing: 1),
                        ),
                      ]),
                    ),
                    Container(
                      height: 30,
                      // width: 100,
                      // alignment: Alignment.center,
                      // color: Colors.grey,
                      child: Row(
                        children: [
                          Text(
                            "    Become a Student",
                            textScaleFactor: 2,
                            style: TextStyle(letterSpacing: 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image.asset("images/studentlogin.png")],
                    ),
                    Stack(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "  Full Name",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              textCapitalization: TextCapitalization.words,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "  Age",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "  Email Id/Phone Number",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              textCapitalization: TextCapitalization.words,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "  Select the Institution",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextField(
                                decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                              suffixIcon: Icon(
                                Icons.expand_more,
                                color: Colors.black38,
                              ),
                            )),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            // // Row(children: [
                            // //   Container(child: Text("Category")),
                            // //   TextField(
                            // //     decoration: InputDecoration(
                            // //         // hintText: "Category",
                            // //         prefixStyle: TextStyle(color: Colors.blue),
                            // //         suffixIcon:
                            // //             Icon(Icons.expand_more_outlined)),
                            // //   ),
                            // //   Container(child: Text("Sub Category")),
                            // //   TextField(
                            // //     decoration: InputDecoration(
                            // //         // hintText: "Sub Category",
                            // //         prefixStyle: TextStyle(color: Colors.blue),
                            // //      suffixIcon:
                            // //            Icon(Icons.expand_more_outlined)),
                            // //  ),
                            // // ]),
                            TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Upload Institution Id",
                                    hintStyle: TextStyle(color: Colors.blue),
                              suffix: ElevatedButton(onPressed: (){},
                                  child: Text("Browse",style: TextStyle(letterSpacing: 1),),
                                  style: ElevatedButton.styleFrom(
                                      // backgroundColor: Colors.green,
                                      textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic),
                                      side: BorderSide(color: Colors.black, width: 2),
                                      shape: RoundedRectangleBorder(

                                          borderRadius: BorderRadius.all(Radius.circular(20)),),
                            ),))),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "  Id Number",
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              // keyboardType: TextInputType.number,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Upload Aadhar Id",
                                    hintStyle: TextStyle(color: Colors.blue),
                                    suffix: ElevatedButton(onPressed: (){},
                                      child: Text("Browse",style: TextStyle(letterSpacing: 1),),
                                      style: ElevatedButton.styleFrom(
                                        // backgroundColor: Colors.green,
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontStyle: FontStyle.italic),
                                        side: BorderSide(color: Colors.black, width: 2),
                                        shape: RoundedRectangleBorder(

                                          borderRadius: BorderRadius.all(Radius.circular(20)),),
                                      ),))),
                            SizedBox(
                              height: 50,
                              width: 50,
                            ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "          Continue          ",
                              textScaleFactor: 3,
                              style: TextStyle(height: 2, letterSpacing: 1),
                              textAlign: TextAlign.start,
                            ),
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.green,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 5,
                                  fontStyle: FontStyle.normal),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              elevation: 2,
                              shadowColor: Colors.black,
                            )),
                      ),
                      // // Stack(children: [
                      // //   Align(
                      // //     alignment: Alignment.center,
                      // //     child: Container(
                      // //       height: 50,
                      // //       width: 30,
                      // //       color: Color(0xff9cd9d0),
                          ]),
                    ]),
                  ]),
            )));
  }
}
