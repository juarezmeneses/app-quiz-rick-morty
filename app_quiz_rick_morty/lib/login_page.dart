import 'package:app_quiz_rick_morty/home_page.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 250,
                  child: Image.network(
                      'https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2018/03/Screen-Shot-2018-03-16-at-11.15.17-AM.jpg?w=1666&ssl=1'),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    if (email == 'juarezlmfilho@gmail.com' &&
                        password == '123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('error');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
