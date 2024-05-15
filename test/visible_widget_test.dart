import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:visible_widget_test/visible_widget_test.dart';

void main() {
  visibleWidgetTest("Example", (widgetTester) async {
    final widget = MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hello"),
        ),
        body: const Center(
          child: Text('hey!'),
        ),
      ),
    );

    await widgetTester.pumpWidget(widget);
  });
}
