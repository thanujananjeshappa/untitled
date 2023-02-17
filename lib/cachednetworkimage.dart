//CachedNetwork Image

// add that package in pubspec.yaml - cached_network_image: ^3.2.3
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: CachedNetworkImagePage(),
  ));
}
class CachedNetworkImagePage extends StatefulWidget {
  const CachedNetworkImagePage({Key? key}) : super(key: key);

  @override
  State<CachedNetworkImagePage> createState() => _CachedNetworkImagePageState();
}

class _CachedNetworkImagePageState extends State<CachedNetworkImagePage> {
  // This image will be cached
  final _image1 =
      'https://www.kindacode.com/wp-content/uploads/2021/08/face.png';

  // This image will not be cached

  final _image2 =
      'https://www.kindacode.com/wp-content/uploads/2021/08/cat.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CachedNetworkImagePage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display image with caching
            const Text('Cached Network Image Page'),
            const SizedBox(
              height: 10,
            ),
            CachedNetworkImage(
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              imageUrl: _image1,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 100,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // This button is used to remove the saved image from the cache directory
            ElevatedButton(
                onPressed: () {
                  CachedNetworkImage.evictFromCache(_image1);
                },
                child: const Text('Remove Cached Images')),

            const SizedBox(
              height: 10,
            ),
            // Display image without caching
            const Divider(),
            const Text('Network Image'),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              _image2,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
             )
          ],
        ),
      ),
    );
  }
}

