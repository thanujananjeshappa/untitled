//Radio Button
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: RadioButtonPage(),
  ));
}

class RadioButtonPage extends  StatefulWidget {
  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? gender;
  // String? genderr;
  // String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child:
        Column(
          children: [
            Text("Select Gender", style: TextStyle(
                fontSize: 18
            ),),
            Divider(),
            RadioListTile(
              title: Text("Male"),
              value: "male",
              // controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.purpleAccent,
              tileColor: Colors.purple,
              subtitle: Icon(Icons.male),
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                  print(gender);
                });
              },
            ),
            RadioListTile(
              title: Text("Female"),
              value: "female",
              subtitle: Icon(Icons.female),
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                  print(gender);
                });
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                  print(gender);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}