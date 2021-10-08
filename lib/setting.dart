import 'package:flutter/material.dart';

void main() {
  runApp(Setting_screen());
}

class Setting_screen extends StatefulWidget {
  const Setting_screen({Key? key}) : super(key: key);

  @override
  _Setting_screenState createState() => _Setting_screenState();
}

class _Setting_screenState extends State<Setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
    );
  }
}
