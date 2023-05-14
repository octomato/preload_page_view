import 'package:example/page.dart';
import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PreloadPageView Demo',
      home: PreloadPageViewDemo(),
    );
  }
}

class PreloadPageViewDemo extends StatefulWidget {
  PreloadPageViewDemo({Key? key}) : super(key: key);

  @override
  _PreloadPageViewState createState() => _PreloadPageViewState();
}

class _PreloadPageViewState extends State<PreloadPageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PreloadPageView Demo"),
        ),
        body: Container(
            child: PreloadPageView.builder(
          preloadPagesCount: 5,
          itemBuilder: (BuildContext context, int position) =>
              DemoPage(position),
          controller: PreloadPageController(initialPage: 1),
          onPageChanged: (int position) {
            print('page changed. current: $position');
          },
        )));
  }
}
