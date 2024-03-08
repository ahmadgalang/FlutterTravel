import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

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
              height: 446,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: double.infinity,
              margin: EdgeInsets.only(
                  right: defaultMargin,
                  left: defaultMargin,
                  top: 35,
                  bottom: 31),
              decoration: BoxDecoration(
                  color: kwhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
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
                              textAlign: TextAlign.justify,
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: regular, height: 2))
                        ],
                      ),
                    ),
              
                    //Image
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
                          Container(
                            height: 100,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    margin: const EdgeInsets.only(right: 16),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/travel_five.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    margin: const EdgeInsets.only(right: 16),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/travel_five.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    margin: const EdgeInsets.only(right: 16),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/travel_five.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 70,
                                    margin: const EdgeInsets.only(right: 16),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/travel_five.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 16,
                                          width: 16,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icons/ic_checklist.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Kids Park',
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: regular),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 16,
                                          width: 16,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icons/ic_checklist.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Kids Park',
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: regular),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 16,
                                          width: 16,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icons/ic_checklist.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Kids Park',
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: regular),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 16,
                                          width: 16,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/icons/ic_checklist.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Kids Park',
                                          style: secondaryTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: regular),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
                  Container(
                    height: 55,
                    width: 170,
                    child: Material(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                      elevation: 5,
                      child: InkWell(
                        splashColor: kRedColor,
                        onTap: () {
                          print('Tombol ditekan!');
                        },
                        borderRadius: BorderRadius.circular(
                            defaultRadius), // Bentuk sudut yang sesuai dengan Material di atas
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(
                          fontWeight: light, fontSize: 18)
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [backgroundImage(), shadowImage(), content()],
          ),
        ],
      ),
    );
  }
}
