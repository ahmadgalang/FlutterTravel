import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget success() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 150,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/success.png'))),
      );
    }

    Widget myBookingButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: CustomButton(
          title: 'My Bookings',
          onPressed: () {},
          width: 220,
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            success(),
            Text('Well Booked 😍',
                textAlign: TextAlign.center,
                style: secondaryTextStyle.copyWith(
                    fontSize: 22, fontWeight: bold)),
            const SizedBox(height: 10),
            Text('Are you ready to explore the new \nworld of experiences?',
                textAlign: TextAlign.center,
                style: greyTextStyle.copyWith(
                    fontSize: 18, fontWeight: light)),
            myBookingButton()
          ],
        ),
      ),
    );
  }
}
