//Switch
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:SwitchButtonPage()
  ));
}
class SwitchButtonPage extends StatefulWidget {
  const SwitchButtonPage({super.key});

  @override
  State<SwitchButtonPage> createState() => _SwitchButtonPageState();
}

class _SwitchButtonPageState extends State<SwitchButtonPage> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Switch(
              value: light,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                  print(light);
                });
              },
            ),
            Switch(
              value: light,
              overlayColor: MaterialStateProperty.all(Colors.red),
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
            Switch(
              value: light,
              overlayColor: MaterialStateProperty.all(Colors.red),
              trackColor: MaterialStateProperty.all(Colors.orange),
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
            Switch(
              value: light,
              overlayColor: MaterialStateProperty.all(Colors.red),
              trackColor: MaterialStateProperty.all(Colors.purpleAccent),
              thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
            Switch(
              value: light,
              overlayColor: MaterialStateProperty.all(Colors.red),
              trackColor: MaterialStateProperty.all(Colors.purpleAccent),
              // thumbColor:  MaterialStatePropertyAll<Color>(Colors.black),
              activeColor: Colors.red,
              mouseCursor: MouseCursor.uncontrolled,
              splashRadius: 20,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
