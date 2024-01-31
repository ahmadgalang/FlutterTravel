import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/custom_button_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigator() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: kwhiteColor),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigatonItem(imageUrl: 'assets/icons/menu_globe.png' , isSelected: true,),
              CustomButtonNavigatonItem(imageUrl: 'assets/icons/menu_book.png',),
              CustomButtonNavigatonItem(imageUrl: 'assets/icons/menu_creditcard.png',),
              CustomButtonNavigatonItem(imageUrl: 'assets/icons/menu_setting.png',)
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const Text('Ahmad \nGalang Afianto'),
            customButtonNavigator()
          ],
        ),
      ),
    );
  }
}
