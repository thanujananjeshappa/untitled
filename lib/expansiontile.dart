//Expansion Tile
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ExpansionTileScreen(),
  ));
}
class ExpansionTileScreen extends StatefulWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Expansion tile with title
            ExpansionTile(
              title: Text("Expansion Tiles"),
            ),
            //Expansion tile with subtitle
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
            ),
            //Expansion tile with Children
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              children: [
                Text("Flutter Logo"),

                FlutterLogo(
                  size: 300,
                )
              ],
            ),
            //Expansion tile with backgroundColor,Textcolor,iconscolor
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.red,
              textColor: Colors.green,
              iconColor: Colors.orange,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with collapsedbabackgrround color,collapsedIconColor,collapsedIconColor
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              collapsedTextColor: Colors.indigo,
              collapsedIconColor: Colors.cyan,
              collapsedBackgroundColor: Colors.purple.shade50,
              backgroundColor: Colors.red.shade50,
              textColor: Colors.green,
              iconColor: Colors.orange,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with leadind,traling
            ExpansionTile(
              leading: Icon(Icons.adb),
              // trailing: Icon(Icons.adb),
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.red,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with childrenPadding,tilePadding
            ExpansionTile(
              childrenPadding: EdgeInsets.all(10),
              tilePadding: EdgeInsets.all(50),
              title: Text("Expansion Tiles Padding"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.red,
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ), //Expansion tile with initiallyExpanded,onExpansionChanged
            ExpansionTile(
              // initiallyExpanded: true,
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              backgroundColor: Colors.green.shade50,
              onExpansionChanged: (value) {
                if (value == true) {
                  print("Expansion Opened");
                } else {
                  print("Expansion Closed");
                }
              },
              children: [
                Text("Flutter Logo"),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
            ExpansionTile(
              title: Text("Expansion Tiles"),
              subtitle: Text("Subtitle of Exapnsion Tile"),
              controlAffinity: ListTileControlAffinity.leading,
              tilePadding: EdgeInsets.all(50),
              children: [
                Text("Flutter Logo"),

                FlutterLogo(
                  size: 300,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
