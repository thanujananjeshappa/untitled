//AppBar
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(MaterialApp(home: AppBarPage(),));
}
class AppBarPage extends StatefulWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  State<AppBarPage> createState() {
    return _AppBarPageState();
  }
}

class _AppBarPageState extends State<AppBarPage> {
  // DateTime time = DateTime.now();
  // String name = "Sunrule";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarOpacity: 0.5,
          backgroundColor: Colors.green,
          elevation: 29,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
           //leading: Icon(Icons.arrow_back_ios),
          // leading: Center(child: Text("Leading")),
          shadowColor: Colors.pinkAccent,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
               side: BorderSide(color: Colors.black, width: 5)),
          toolbarHeight: 100,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.pinkAccent,
                child: Center(child: Text("data"))),
          ),
          titleTextStyle: TextStyle(color: Colors.purple, fontSize: 25),
          leading: CircleAvatar(
            backgroundColor: Colors.black,
          ),
          title: Text(
            "AppBar Class",
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
          iconTheme: IconThemeData(color: Colors.yellow),
          actions: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("fsdsfdsf"),
                  Text("fsdsfdsf"),
                  Text("fsdsfdsf"),
                ],
              ),
            ),
            Icon(
              Icons.android,
              color: Colors.indigo,
            ),
            Icon(Icons.add),
            Icon(Icons.delete),
            Icon(Icons.person),
          ],
          centerTitle: true,
          // titleSpacing: 150,
        ),
        body: Center(child: Text("App Bar Class")));
  }
}