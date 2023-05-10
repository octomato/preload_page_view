import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  DemoPage(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    print('Page loaded: $index}');

    return Center(
      child: Text(
        'Page $index',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
