//Images - Network Image and Assets Image
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ImageScreen(),
  ));
}

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  "Image One",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    // image: AssetImage("assetsone/imgone.jpg"),
                      fit: BoxFit.none,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60')),
                ),
              ),
              Text("Assets Image"),
              Image.asset(
                "images/istockphoto-175633219-1024x1024.jpg",
                height: 100,
                width: 100,
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
                height: 200,
                width: 200,
                errorBuilder: (BuildContext context,
                    Object exception, StackTrace? stackTrace) {
                  return const Text("Image Sourcce Not Available");
                },
              )

              // Image.asset("",)
            ],
          ),
        ),
      ),
    );
  }
}

//https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60
