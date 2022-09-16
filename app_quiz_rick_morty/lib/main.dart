// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'Quiz Rick and Morty',
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
        child: Center(
          child: Text(
            title,
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
