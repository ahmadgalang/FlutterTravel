import 'package:flutter/material.dart';
import 'package:flutter_travel/ui/pages/detail_page.dart';

import '../../shared/theme.dart';

class CustomCardDestination extends StatelessWidget {
  final String imageUrl;
  final String titleDestination;
  final String locationDestination;
  final String rating;

  const CustomCardDestination(
      {super.key,
      required this.imageUrl,
      required this.titleDestination,
      required this.locationDestination,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 200,
        height: 323,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kwhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 54.5,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(defaultRadius),
                      ),
                      color: kwhiteColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ic_star.png'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        rating,
                        style: TextStyle(fontWeight: semiBold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleDestination,
                    style: secondaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    locationDestination,
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
