import 'dart:async';

import 'package:ao_folio/functions/nav_methods.dart';
import 'package:ao_folio/utilities/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Nav().goToHome(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      body: SafeArea(
          child: Center(
        child: Image.asset('assets/images/logo.png'),
      )),
    );
  }
}
