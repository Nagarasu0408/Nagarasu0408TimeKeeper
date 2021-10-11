import 'package:flutter/material.dart';

void main() {
  runApp(Privacy_Policy());
}

class Privacy_Policy extends StatelessWidget {
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2b2b2c),
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
