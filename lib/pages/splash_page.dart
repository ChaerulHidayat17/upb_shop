import 'package:flutter/material.dart';
import 'dart:async';
import 'package:upb_shop/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 480,
          height: 480,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/upb.png'),
            ),
          ),
        ),
      ),
    );
  }
}
