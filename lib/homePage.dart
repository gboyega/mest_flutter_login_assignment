import 'package:db_assignment/elements.dart';
import 'package:db_assignment/login.dart';
import 'package:db_assignment/register.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Artboard.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "The best app for your everything",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 140),
              SingleButton(
                placeholder: "Sign up",
                col: "white",
                pressAction: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
              ),
              const SizedBox(height: 20),
              SingleButton(
                  placeholder: "Login",
                  col: "green",
                  pressAction: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
