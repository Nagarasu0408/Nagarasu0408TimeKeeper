import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:untitled/entry_sheet.dart';
import 'package:untitled/history.dart';
import 'package:untitled/setting.dart';

void main() {
  runApp(const TimeKeeper());
}

class TimeKeeper extends StatefulWidget {
  const TimeKeeper({Key? key}) : super(key: key);

  @override
  _TimeKeeperState createState() => _TimeKeeperState();
}

class _TimeKeeperState extends State<TimeKeeper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2b2b2c),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF343234),
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                title: Text("History"),
                activeIcon: IconButton(
                  icon: Icon(Icons.history),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => History_screen()));
                  },
                ),
                icon: Icon(Icons.history)),
            BottomNavigationBarItem(
                title: Text("Settings"),
                activeIcon: IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Setting_screen()));
                  },
                ),
                icon: Icon(Icons.settings)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 10,
          onPressed: () {},
          child: IconButton(
            padding: EdgeInsets.all(2),
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Entery()));
            },
            splashColor: Colors.greenAccent,
          ),
        ),
        /*body: SafeArea(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Stack(
                children: [
                  Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    color: Colors.white,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 34.0, vertical: 56),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF213B6C), Color(0xFF0059A5)]),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 12,
                              offset: Offset(3, 3))
                        ],
                      ),
                      child: Row(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),*/
        body: SafeArea(
          child: DigitalClock(
            areaHeight: 110,
            areaWidth: double.infinity,
            showSecondsDigit: true,
            digitAnimationStyle: Curves.ease,
            is24HourTimeFormat: false,
            areaDecoration: BoxDecoration(
              color: Colors.transparent,
            ),
            hourMinuteDigitDecoration: BoxDecoration(color: Colors.transparent),
            secondDigitDecoration: BoxDecoration(color: Colors.transparent),
            hourMinuteDigitTextStyle: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            amPmDigitTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        /* DigitalClock(
          digitAnimationStyle: Curves.ease,
          is24HourTimeFormat: false,
          areaDecoration: BoxDecoration(
            color: Colors.transparent,
          ),
          hourMinuteDigitTextStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 50,
          ),
          amPmDigitTextStyle:
              TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
        ),*/
      ),
    );
  }
}
