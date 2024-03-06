import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/travel_one.png'),
              fit: BoxFit.cover),
        ),
      );
    }

    Widget shadowImage() {
      return Container(
        height: 214,
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.6)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), shadowImage()],
      ),
    );
  }
}
