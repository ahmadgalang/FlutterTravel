import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/custom_text_form_field.dart';
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
      Widget fullName() {
        return CustomTextFormField(
            labelText: 'Full Name', hintText: 'Input your name');
      }

      Widget address() {
        return CustomTextFormField(
            labelText: 'Address', hintText: 'Input your Address');
      }

       Widget hobby() {
        return CustomTextFormField(
            labelText: 'Hobby', hintText: 'Input your Hobby');
      }

       Widget password() {
        return CustomTextFormField(
            labelText: 'Password', hintText: 'Input your Password', obscuredText: true, isIcon: true,);
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
            fullName(),
            address(),
            hobby(),
            password(),
            const SizedBox(height: 20),
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
