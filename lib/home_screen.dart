import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:untitled/check%20in.dart';
import 'package:untitled/history.dart';
import 'package:untitled/setting.dart';
import 'package:untitled/stop_watch.dart';

void main() {
  runApp(const TimeKeeper());
}

class TimeKeeper extends StatefulWidget {
  const TimeKeeper({Key? key}) : super(key: key);

  @override
  _TimeKeeperState createState() => _TimeKeeperState();
}

class _TimeKeeperState extends State<TimeKeeper> {
  int currentIntex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFF343234),
            currentIndex: currentIntex,
            onTap: (intex) => setState(() => currentIntex = intex),
            items: [
              const BottomNavigationBarItem(
                backgroundColor: Color(0xFF343234),
                title: Text("Home"),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF343234),
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
                  backgroundColor: Color(0xFF343234),
                  title: Text("Timer"),
                  activeIcon: IconButton(
                    icon: Icon(Icons.lock_clock),
                    padding: EdgeInsets.all(0.5),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CountDownTimerPage()));
                    },
                  ),
                  icon: Icon(Icons.lock_clock)),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFF343234),
                  title: Text("Settings"),
                  activeIcon: IconButton(
                    icon: Icon(Icons.settings),
                    padding: EdgeInsets.all(0.5),
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
              onPressed: () {},
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
          body: Column(
            /*mainAxisAlignment: MainAxisAlignment.spaceEvenly,*/
            children: [
              Image.asset("android/image/home_walpaper.jpg"),
              /* Container(
                padding: EdgeInsets.all(0.7),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: const SafeArea(
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),*/
              SafeArea(
                child: DigitalClock(
                  areaHeight: 110,
                  areaWidth: double.infinity,
                  showSecondsDigit: true,
                  is24HourTimeFormat: false,
                  digitAnimationStyle: Curves.ease,
                  areaDecoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  hourMinuteDigitDecoration:
                      BoxDecoration(color: Colors.transparent),
                  secondDigitDecoration:
                      BoxDecoration(color: Colors.transparent),
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
              SizedBox(
                height: 250,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CountUpTimerPage()));
                },
                color: Colors.greenAccent,
                child: Text(
                  "IN",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
