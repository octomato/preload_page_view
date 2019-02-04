import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreloadPageView Demo',
      home: PreloadPageViewDemo(),
    );
  }
}

class PreloadPageViewDemo extends StatefulWidget {
  PreloadPageViewDemo({Key key}) : super(key: key);

  @override
  _PreloadPageViewState createState() => _PreloadPageViewState();
}

class _PreloadPageViewState extends State<PreloadPageView> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PreloadPageView Demo"),
      ),
      body: Center(
          child: PreloadPageView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int position) {
          new Text("item" + position.toString());
        },
        controller: PreloadPageController(),
        onPageChanged: (int position) {},
      )),
    );
  }
}
