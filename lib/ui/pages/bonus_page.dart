import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/bonusCard.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2,
                offset: const Offset(0, 11),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name',
                        style: whiteTextStyle.copyWith(fontWeight: regular)),
                    SizedBox(
                      width: 150,
                      child: Text(
                        'Ahmad Galang Afianto',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/ic_logo.png'),
                        ),
                      ),
                    ),
                    Text('Pay',
                        style: whiteTextStyle.copyWith(fontWeight: bold)),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Balance',
                        style: whiteTextStyle.copyWith(fontWeight: regular)),
                    Text('IDR. 280.000.000',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 26)),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Big Bonus',
              style:
                  secondaryTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'We give you early credit so that \n you can buy a flight ticket',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                  fontSize: 15, fontWeight: light, height: 1.7),
            )
          ],
        ),
      );
    }

    Widget startButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        height: 55,
        width: 220,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Start Fly Now',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bonusCard(), title(), startButton()],
          ),
        ),
      ),
    );
  }
}
