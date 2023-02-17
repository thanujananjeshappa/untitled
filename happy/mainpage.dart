//Drawer
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
      home: DrawerWidgt())
  );

}
class DrawerWidgt extends StatefulWidget {
  const DrawerWidgt({Key? key}) : super(key: key);

  @override
  _DrawerWidgtState createState() => _DrawerWidgtState();
}

class _DrawerWidgtState extends State<DrawerWidgt> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        // width: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        shadowColor: Colors.black12,
        backgroundColor: Colors.grey,
        elevation: 1,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("images/Screenshot_2022-12-24-00-48-16-223_com.google.android.youtube.jpg"),
                  ),
                  Text("Header"),
                ],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              title: Text("Menu"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
            ) ,
            ListTile(
              title: Text("Price"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.money),),
            ) ,  ListTile(
              title: Text("Stock"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.analytics_outlined),),
            )  , ListTile(
              title: Text("list"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.list),),
            )   ,ListTile(
              title: Text("Grid"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.grid_3x3),),
            )   ,ListTile(
              title: Text("Wallet"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.wallet),),
            )   ,ListTile(
              title: Text("Logout"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.logout),),
            )   ,ListTile(
              title: Text("Help"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.help),),
            )   ,ListTile(
              title: Text("Contact"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.contact_phone),),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Profile'),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Contact"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.quick_contacts_dialer_sharp),),
            ) ,
            ListTile(
              leading: Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {},

            ),
            
            ListTile(
              title: Text("Update"),
              trailing: IconButton(onPressed: (){},icon: Icon(Icons.update),),
            ) ,
            ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      // backgroundColor: focus.hasFocus ? Colors.red : Colors.green,
      appBar: AppBar(
        title: const Text("DropDownMenu"),
      ),

    );
  }
}