import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upb_shop/pages/sign_in_page.dart';
import 'package:upb_shop/pages/sign_up_page.dart';
import 'package:upb_shop/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        
      },
    );
  }
}
