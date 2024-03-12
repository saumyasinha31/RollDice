import 'package:flutter/material.dart';

import 'package:project1/gradient_container.dart';

void main() {
  runApp(const MaterialApp(home: Text('Hello world!')));
  // const helps dart to optimize the run time performance
  //materialApp is a widget
  // text is argument and string hello world
  // when we use const the widget is directly stored in the device memory and avoid duplication and increases efficiency

  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: null,
        // backgroundColor: Color.fromRGBO(180, 100, 250, 60),
        body: GradientContainer(
          Colors.indigo,
          Colors.purple.shade900,
        ),
      ),
    ),
  );
  // align text to center
}
