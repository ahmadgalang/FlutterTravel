import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              margin: EdgeInsets.only(bottom: 40),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/icons/logo.png'),
                ),
              ),
            ),
            Text('AIRPLANE',
                style: whiteTextStyle.copyWith(
                    fontSize: 32, fontWeight: extraBold, letterSpacing: 8.0))
          ],
        ),
      ),
    );
  }
}
