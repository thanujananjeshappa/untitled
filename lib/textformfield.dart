//TextFormField
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TextFormFieldScreen()));
}

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("TextFormField"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                enabled: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple, width: 5),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 5),
                    )),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Password';
                  }
                  return null;
                },
              ),
              TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("validated");
                    }
                  },
                  child: Text("Submit")),
              Text("TextFormField :label: Text('username'),"),
              TextFormField(
                onTap: () {},
                onChanged: (v) {
                  print(v);
                },
                enabled: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  label: Text("Username"),
                  //Widgets
                  // floatingLabelBehavior: FloatingLabelBehavior.auto,
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(" floatingLabelBehavior: FloatingLabelBehavior.always,"),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password", //String
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(" floatingLabelBehavior: FloatingLabelBehavior.never,"),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password", //String
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("  filled: true, fillColor: Colors.purpleAccent,"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purpleAccent,
                  labelText: "Password", //String
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("  filled: true, fillColor: Colors.purpleAccent,hover"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purpleAccent,
                  hoverColor: Colors.blue.shade100,
                  labelText: "Password",
                  //String
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(" helperText: eg.Jhon Wick,"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  helperText: "I'm Helper Text",
                  fillColor: Colors.purpleAccent,
                  labelText: "Password",
                  //String
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(" helperText: eg.Jhon Wick,"),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  counterText: "eg: 9432XXXXX, don't add 91",
                  fillColor: Colors.purpleAccent,
                  labelText: "Mobile Number",
                  //String
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(" helperText: eg.Jhon Wick,"),
              TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(),
                  counter: Icon(Icons.adb),
                  fillColor: Colors.purpleAccent,
                  labelText: "Password",
                  //String

                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: false,
                      hintText: 'Container',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                child: TextFormField(
                  decoration: InputDecoration(
                    isCollapsed: true,
                    hintText: 'Container',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
