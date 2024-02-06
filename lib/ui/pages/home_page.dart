import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/custom_card_list_destination.dart';
import 'package:flutter_travel/ui/widgets/custom_card_popular_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmad\nGalang Afianto',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 20, fontWeight: bold),
                  ),
                  Text('Where to fly today?',
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: light))
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestionation() {
      return Container(
          margin: EdgeInsets.only(top: 30, left: defaultMargin, bottom: 30),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomCardDestination(
                  imageUrl: 'assets/images/travel_one.png',
                  titleDestination: 'DisneyLand',
                  locationDestination: 'Japan',
                  rating: '4.8',
                ),
                CustomCardDestination(
                  imageUrl: 'assets/images/travel_five.png',
                  titleDestination: 'Mandalika',
                  locationDestination: 'Indonesia',
                  rating: '4.2',
                ),
                CustomCardDestination(
                  imageUrl: 'assets/images/travel_two.png',
                  titleDestination: 'Bali',
                  locationDestination: 'Indonesia',
                  rating: '5.0',
                )
              ],
            ),
          ));
    }

    Widget title() {
      return Container(
          margin: EdgeInsets.only(left: defaultMargin, top: 5, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'New This Year',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: defaultMargin),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat Semua',
                    style: secondaryTextStyle.copyWith(fontWeight: light, fontSize: 12),
                  ),
                ),
              ),
            ],
          ));
    }

    Widget listDestination() {
      return const Column(
        children: [CustomCardListDestination(), CustomCardListDestination()],
      );
    }

    return ListView(

      children: [header(), popularDestionation(), title(), listDestination()],
    );
  }
}
