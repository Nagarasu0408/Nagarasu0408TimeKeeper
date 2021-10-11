/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(Gsignin());
}

class Gsignin extends StatefulWidget {
  const Gsignin({Key? key}) : super(key: key);

  @override
  _GsigninState createState() => _GsigninState();
}

class _GsigninState extends State<Gsignin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Image.asset(
                "android/image/google.jpg",
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 175,
                  child: Text(
                    "Welcome To Sign In Page",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 90),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 14,
                  minimumSize: Size(79, 50),
                  padding: EdgeInsets.all(10),
                ),
                icon: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  "Google Sign In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 12),
              SizedBox(height: 12),
              Text(
                "Login To Continue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Image.asset(
                "android/image/google 2.jpg",
                scale: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<UserCredential?> signInwithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredentials =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return userCredentials;
    }
  }
}
*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled/home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _usersignInFormkey = GlobalKey();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.white60],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter)),
        child: Center(
          child: OutlinedButton(
            onPressed: () async {
              signInWithGoogle().then((value) => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TimeKeeper())));
            },
            child: Text("Sign in With Google"),
          ),
        ),
      ),
    );
  }

  Future<UserCredential?> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    if (googleAuth != null) {
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );
      var userCredentials =
          await FirebaseAuth.instance.signInWithCredential(credential);
      // Once signed in, return the UserCredential
      return userCredentials;
    }
  }
}
