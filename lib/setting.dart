import 'package:flutter/material.dart';
import 'package:untitled/privacy_policy.dart';

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
      backgroundColor: const Color(0xFF2b2b2c),
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Privacy_Policy()));
            },
            title: Text("Privacy Policy",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.privacy_tip_outlined),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Privacy_Policy()));
              },
            ),
          ),
          Divider(
            height: 2,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
