import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

import '../widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'Join us and get \nyour next journey',
          style: primaryTextStyle.copyWith(
              color: kSecondaryColor, fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget inputSection() {
      Widget field(String labelText, String hintText, bool obsecure) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(labelText, style: secondaryTextStyle),
            const SizedBox(height: 6),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                hintText: hintText,
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 205, 205, 205)),
              ),
              cursorColor: kSecondaryColor,
              obscureText: obsecure,
            )
          ],
        );
      }

      Widget getStartedBtn() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
          color: kwhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            field('Full Name', 'Input Your Full Name', false),
            field('Email Address', 'Input Your Email Address', false),
            field('Password', 'Input Your Password', true),
            field('Hobby', 'Input Your Hobby', false),
            const SizedBox(height: 30),
            getStartedBtn(),
            const SizedBox(height: 20),
          ],
        ),
      );
    }

    Widget tacBtn() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Terms and Condition',
            style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacBtn()],
        ),
      ),
    );
  }
}
