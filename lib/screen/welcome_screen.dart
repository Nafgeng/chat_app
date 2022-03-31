import 'package:chat_app/screen/login_screen.dart';
import 'package:chat_app/screen/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "WELCOME_SCREEN";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Hero(
                      tag: 'Logo',
                      child: Container(
                        height: 200,
                        child: Center(
                          child: Image.asset('image/rafiki.png'),
                        )
                      )
                    ),
                  ]),
                  Center(
                      child: Text(
                    'Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                  SizedBox(
                    height: 48.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text('Log in'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30.0),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RegistrationScreen.id);
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text('Register'),
                        )),
                  )
                ])));
  }
}
