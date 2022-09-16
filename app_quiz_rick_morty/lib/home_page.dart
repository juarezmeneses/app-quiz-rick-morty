import 'package:flutter/material.dart';

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
