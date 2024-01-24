import 'dart:async';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 40),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/logo.png'),
                ),
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: extraBold, letterSpacing: 8.0),
            ),
          ],
        ),
      ),
    );
  }
}
