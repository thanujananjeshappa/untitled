//ElevatedButton
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ElevatedButtonScreen(),
  ));
}
class ElevatedButtonScreen extends StatefulWidget {
  const ElevatedButtonScreen({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonScreen> createState() => _ElevatedButtonScreenState();
}

class _ElevatedButtonScreenState extends State<ElevatedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevated Button"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Elevated Button"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            Text("Elevated Button"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            Text("Elevated Button, Color"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
            Text("Elevated Button, Color,textStyle"),
            ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.italic),
                )),
            Text("Elevated Button, Color,textStyle,side"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.italic),
                side: BorderSide(color: Colors.yellow, width: 1),
              ),
            ),
            Text("Elevated Button, Color,textStyle,side,shape"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.italic),
                side: BorderSide(color: Colors.yellow, width: 2),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            Text(
                "Elevated Button, Color,textStyle,side,shape,shadow,elevation"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.italic),
                  side: BorderSide(color: Colors.yellow, width: 2),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.lightBlue,
                  elevation: 20),
            ),
            Text("Elevated Button, Color"),
            ElevatedButton(
              onPressed: null,
              onLongPress: () {},
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.italic),
                  side: BorderSide(color: Colors.yellow, width: 1),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.lightBlue,
                  elevation: 20,
                  disabledBackgroundColor: Colors.red,
                  disabledForegroundColor: Colors.purple),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(onPressed: () {}, child: Text("Outlined Button"))
          ],
        ),
      ),
    );
  }
}
