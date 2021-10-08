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
      appBar: AppBar(
        title: Text("History"),
      ),
    );
  }
}
