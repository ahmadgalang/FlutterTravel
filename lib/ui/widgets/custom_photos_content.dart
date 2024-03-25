import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/travel_five.png'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
