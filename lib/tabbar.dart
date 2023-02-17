import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/elevatedbutton.dart';
import 'package:untitled/iconbutton.dart';
import'package:untitled/textbutton.dart';
void main(){
  runApp(MaterialApp(
    home: Tab_Bar_View(),
  ));
}
class Tab_Bar_View extends StatefulWidget {
  const Tab_Bar_View({Key? key}) : super(key: key);

  @override
  State<Tab_Bar_View> createState() => _Tab_Bar_ViewState();
}

class _Tab_Bar_ViewState extends State<Tab_Bar_View> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // animationDuration: Duration(seconds: 5),
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.amberAccent,

            // indicatorSize: TabBarIndicatorSize.tab,
             indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            dragStartBehavior: DragStartBehavior.down,
            // indicator: BoxDecoration(
            //      shape: BoxShape.circle,
            //     // shape: BoxShape.rectangle,
            //     borderRadius: BorderRadius.circular(10),), // Creates border
            //     color: Colors.greenAccent),
                     indicator: BoxDecoration(
                // color: Colors.greenAccent,
                image: DecorationImage(
                    image: AssetImage('assets/image.png'),
                    fit: BoxFit.fitWidth)),
            // indicator: BoxDecoration(gradient: LinearGradient(colors: [Colors.red,Colors.lightBlueAccent,Colors.purpleAccent])),

            tabs: [
              Tab(
                // icon: Icon(Icons.flight),
                text: "Icon ",
              ),
              Tab(
                // icon: Icon(Icons.directions_transit),
                text: "Text Buttons",
              ),
              Tab(
                // icon: Icon(Icons.directions_car),
                text: "Elevated Button",
              ),
            ],
          ),
          title: Text('Tabs Bar '),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            IconButtonScreen(),
            TextButtonScreen(),
            ElevatedButtonScreen(),
          ],
        ),
      ),
    );
  }
}
