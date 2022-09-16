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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'Quiz Rick and Morty: $counter',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 25.0),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}
