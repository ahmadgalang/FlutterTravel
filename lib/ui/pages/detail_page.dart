import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/pages/choose_seat_page.dart';
import 'package:flutter_travel/ui/widgets/custom_button.dart';
import 'package:flutter_travel/ui/widgets/custom_cheklist_content.dart';
import 'package:flutter_travel/ui/widgets/custom_photos_content.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/travel_one.png'),
              fit: BoxFit.cover),
        ),
      );
    }

    Widget shadowImage() {
      return Container(
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      );
    }

    Widget content() {
      return SafeArea(
        // NOTE : ICON
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 24,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/ic_detail_travel.png'))),
            ),

            // NOTE : TITLE
            Container(
              margin: EdgeInsets.only(
                  top: 254, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Indonesia',
                          style: whiteTextStyle.copyWith(
                              fontWeight: light, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/ic_star.png'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        '4.5',
                        style: whiteTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: double.infinity,
              margin: EdgeInsets.only(
                  right: defaultMargin,
                  left: defaultMargin,
                  top: 35,
                  bottom: 31),
              decoration: BoxDecoration(
                  color: kwhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        const SizedBox(height: 6),
                        Text(
                            'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                            textAlign: TextAlign.start,
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: regular, height: 2))
                      ],
                    ),
                  ),
            
                  // NOTE : PHOTOS
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photos',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        const SizedBox(height: 6),
                        const SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Photos(),
                                Photos(),
                                Photos(),
                                Photos()
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  // NOTE : CHECKLIST
                  Container(
                    height: 86,
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interest',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        const SizedBox(height: 7),
                        const ChecklistItem(),
                        const ChecklistItem()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rp.250.000',
                        style: blackTextStyle.copyWith(
                            fontWeight: regular, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Per Orang',
                        style: greyTextStyle.copyWith(
                            fontWeight: light, fontSize: 14),
                      ),
                    ],
                  ),
                  CustomButton(title: 'Book Now', width: 170, onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseSeatPage(),));
                  },)
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), shadowImage(), content()],
        ),
      ),
    );
  }
}
