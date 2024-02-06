import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomCardListDestination extends StatelessWidget {
  const CustomCardListDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 370,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kwhiteColor,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/travel_one.png'),
                  ),
                  borderRadius: BorderRadius.circular(defaultRadius)),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monas',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                    Text(
                      'Indonesia',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 24,
              width: 46,
              decoration: BoxDecoration(color: kwhiteColor),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/ic_star.png'),
                      ),
                    ),
                  ),
                  const Text('4.8')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
