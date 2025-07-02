import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_greenroot_app/login.dart'; // Update to your actual login page import

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const Login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7E9) ,
      body: Column(
        children: [
          Center(
            child: Center(
              child: Image.asset(
                "assets/images/logo.png"
              ),
            ),
            // Make sure the path is correct
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("'From Soil to Success'",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),
    
    );
  }
}
