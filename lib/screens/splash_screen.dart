import 'dart:async';
import 'package:firstui/screens/connect_screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ConnectScreen()));
      },
    );
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/welcome.png')),
      ),
    );
  }
}
