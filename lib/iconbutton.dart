//IconButton
import 'package:flutter/material.dart';
import 'package:untitled/dividers.dart';
void main(){
  runApp(MaterialApp(home:IconButtonScreen()));
}

class IconButtonScreen extends StatefulWidget {
  const IconButtonScreen({Key? key}) : super(key: key);

  @override
  State<IconButtonScreen> createState() => _IconButtonScreenState();
}

class _IconButtonScreenState extends State<IconButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Icon Button"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Icon Button"),
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dividersscreen()));
                  },
                  icon: Icon(Icons.home),
                ),
                Text("Icon Button with Color"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                  ),
                  color: Colors.purple,
                ),
                Text("Icon Button size"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.purple,
                  iconSize: 40,
                ),
                Text("Icon Button with Tooltip"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.purple,
                  iconSize: 40,
                  tooltip: 'Home',
                ),
                Text("Icon Button with splashColor, splashRadius"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.purple,
                  iconSize: 40,
                  tooltip: 'Home',
                  splashColor: Colors.lightBlueAccent,
                  splashRadius: 40,
                ),
                Text("Icon Button with highlightColor,padding null,alignment"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.red,
                  iconSize: 40,
                  tooltip: 'Home',
                  splashColor: Colors.lightBlueAccent,
                  splashRadius: 30,
                  highlightColor: Colors.green,
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.topLeft,
                ),
                Text("Icon Button with highlightColor,padding,alignment"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.purple,
                  iconSize: 40,
                  tooltip: 'Home',
                  splashColor: Colors.lightBlueAccent,
                  splashRadius: 30,
                  highlightColor: Colors.green,
                  padding: EdgeInsets.all(50),
                  alignment: Alignment.topLeft,
                ),
                Text("Icon Button with highlightColor,padding"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.purple,
                  iconSize: 40,
                  tooltip: 'Home',
                  splashColor: Colors.lightBlueAccent,
                  splashRadius: 30,
                  highlightColor: Colors.green,
                  padding: EdgeInsets.all(0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  splashColor: Colors.lightBlueAccent,
                  splashRadius: 30,
                  highlightColor: Colors.green,
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: ContinuousRectangleBorder(
                        side: BorderSide(color: Colors.yellow, width: 5),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
    