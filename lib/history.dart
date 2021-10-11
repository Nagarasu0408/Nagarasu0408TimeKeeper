import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(History_screen());
}

class History_screen extends StatefulWidget {
  const History_screen({Key? key}) : super(key: key);

  @override
  _History_screenState createState() => _History_screenState();
}

class _History_screenState extends State<History_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b2b2c),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0.7),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: const SafeArea(
              child: Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
