import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/google_sign_in.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: const Color(0xFF2b2b2c),
        splashIconSize: 100,
        duration: 1800,
        splashTransition: SplashTransition.fadeTransition,
        splash: Stack(
          children: <Widget>[
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Welcome To",
                    textStyle: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  TypewriterAnimatedText(
                    "Time Keeper",
                    textStyle: TextStyle(fontSize: 35, color: Colors.white),
                  )
                ],
              ),
            ),
            Image.asset("android/image/clock.png"),
          ],
        ),
        nextScreen: SignIn(),
        /*nextScreen: const TimeKeeper(),*/
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final CountDownController controller = new CountDownController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            backgroundColor: Colors.grey.shade200,
            appBar: AppBar(
              title: Text('neon circular timer'),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NeonCircularTimer(
                      onComplete: () {
                        controller.restart();
                      },
                      width: 200,
                      controller: controller,
                      duration: 20,
                      strokeWidth: 10,
                      isTimerTextShown: true,
                      neumorphicEffect: false,
                      outerStrokeColor: Colors.grey.shade100,
                      innerFillGradient: LinearGradient(colors: [
                        Colors.greenAccent.shade200,
                        Colors.blueAccent.shade400
                      ]),
                      neonGradient: LinearGradient(colors: [
                        Colors.greenAccent.shade200,
                        Colors.blueAccent.shade400
                      ]),
                      strokeCap: StrokeCap.round,
                      innerFillColor: Colors.black12,
                      backgroudColor: Colors.grey.shade100,
                      neonColor: Colors.blue.shade900),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              icon: Icon(Icons.play_arrow),
                              onPressed: () {
                                controller.resume();
                              }),
                          IconButton(
                              icon: Icon(Icons.pause),
                              onPressed: () {
                                controller.pause();
                              }),
                          IconButton(
                              icon: Icon(Icons.repeat),
                              onPressed: () {
                                controller.restart();
                              }),
                        ]),
                  )
                ],
              ),
            )));
  }
}
*/
