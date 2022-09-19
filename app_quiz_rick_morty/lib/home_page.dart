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
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Rick and Morty'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Question: $counter',
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
