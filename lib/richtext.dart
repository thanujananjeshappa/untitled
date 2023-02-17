//RichText
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:RichTextScreen()
  ));
}

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                text: "One",
                style: TextStyle(color: Colors.red),
                children: [
                  TextSpan(text: "Two", style: TextStyle(color: Colors.black)),
                  WidgetSpan(child: Icon(Icons.onetwothree_rounded)),
                  TextSpan(text: "Three", style: TextStyle(color: Colors.black))
                ]),
          ),
          RichText(
            text: TextSpan(text: "Hello ", children: [
              TextSpan(
                  text: "World",
                  style: TextStyle(
                      decorationStyle: TextDecorationStyle.dotted,
                      decoration: TextDecoration.lineThrough)),
              TextSpan(
                  text: "!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
            ]),
          ),
          RichText(
            textScaleFactor: 1,
            text: TextSpan(children: [
              TextSpan(
                  text: "Hello",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
              WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(
                    Icons.sunny,
                    color: Colors.yellow,
                  ),
                ),
              ),
              TextSpan(
                  text: 'Digital ',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("Digital");
                    }),
              WidgetSpan(
                child: Container(
                    height: 50,
                    width: 50,
                    child: Image.network(
                        "https://thumbs.dreamstime.com/z/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg")),
              ),
              TextSpan(
                  text: ' Solutions ',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print("Solutiond Tap Detected");
                    }),
            ]),
          ),
        ],
      ),
    );
  }
}
