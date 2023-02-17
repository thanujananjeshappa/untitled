//SliverAppBar
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: SliverAppBarExample(),));
}
class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            actions: [
              Icon(Icons.account_balance_outlined),
              Icon(Icons.account_balance_outlined),
            ],
            backgroundColor: Colors.red,
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 6),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
