import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: FittedScreen(),));
}
class FittedScreen extends StatefulWidget {
  const FittedScreen({Key? key}) : super(key: key);

  @override
  State<FittedScreen> createState() => _FittedScreenState();
}

class _FittedScreenState extends State<FittedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FittedBox(
              fit:BoxFit.fill,
              child: Text("hello world"),
            ),
            Text("nbjhknbjahkjhskjhskjghjhsjsjhs ankajnjk"),
            FittedBox(
              fit:BoxFit.fill,
              child: Text("nbjhknbjahkjhskjhskjghjhsjsjhs ankajnjknbanbns "),
            ),
            FittedBox(
              fit:BoxFit.fill,
              child: Image.network("https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network("https://media.gettyimages.com/id/1246464390/photo/the-lovely-vidhan-soudha.jpg?s=1024x1024&w=gi&k=20&c=r_-Es1fencYZZxAWJNQ9s35JBgCUVjiZuDCpJhC5MUM="),
            )
          ],
        ),
      ),
    );
  }
}
