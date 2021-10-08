import 'package:flutter/material.dart';

void main() {
  runApp(Entery());
}

class Entery extends StatefulWidget {
  const Entery({Key? key}) : super(key: key);

  @override
  _EnteryState createState() => _EnteryState();
}

class _EnteryState extends State<Entery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entery"),
      ),
    );
  }
}
