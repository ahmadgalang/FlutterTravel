import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomCardListDestination extends StatelessWidget {
  final String imageUrl;
  final String titleDestination;
  final String locationDestination;
  final double rating;

  const CustomCardListDestination(
      {super.key,
      required this.imageUrl,
      required this.titleDestination,
      required this.locationDestination,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 16, left: defaultMargin, right: defaultMargin ),
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
            height: 70 ,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(16),),),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleDestination,
                    style: secondaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  Text(
                    locationDestination,
                    style: greyTextStyle.copyWith(
                        fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 24,
            width: 46,
            margin: const EdgeInsets.only(right: 16),
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
                Text(
                  rating.toString(),
                  style: TextStyle(fontWeight: semiBold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
