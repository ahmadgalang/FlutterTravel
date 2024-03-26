import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/booking_detail_item.dart';
import 'package:flutter_travel/ui/widgets/custom_button.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: 291,
            height: 65,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/route.png')),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CKG',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: bold),
                  ),
                  Text(
                    'Jakarta',
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'TLC',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: bold),
                  ),
                  Text(
                    'SURABAYA',
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  ),
                ],
              ),
            ],
          )
        ],
      );
    }

    Widget detailTransaction() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: kwhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/travel_five.png'),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.all(Radius.circular(defaultRadius))),
                ),
                Container(
                  width: 124,
                  height: 53,
                  margin: const EdgeInsets.only(right: 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ciliwung',
                        style: secondaryTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 18),
                      ),
                      Text(
                        'Jakarta',
                        style: greyTextStyle.copyWith(
                            fontWeight: light, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Row(
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
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('4.8')
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Booking Details',
                    style: secondaryTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ],
              ),
            ),
            BookingDetailItem(
              title: 'Traveller',
              value: '2 person',
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Seat',
              value: 'A3, B3',
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Insurance',
              value: 'YES',
              valueColor: kGreenColor,
            ),
            BookingDetailItem(
              title: 'Refundable',
              value: 'NO',
              valueColor: kRedColor,
            ),
            BookingDetailItem(
              title: 'VAT',
              value: '45%',
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Price',
              value: 'IDR 8.500.690',
              valueColor: kBlackColor,
            ),
            BookingDetailItem(
              title: 'Grand Total',
              value: 'IDR 12.000.000',
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentsDetail() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        decoration: BoxDecoration(
            color: kwhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: secondaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: semiBold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/wall.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Warna bayangan
                        spreadRadius: 1, // Menyebar radius bayangan
                        blurRadius: 9, // Radius blur bayangan
                        offset: Offset(0,
                            1), // Posisi offset bayangan, [horizontal, vertical]
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IDR. 40.000.000',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: bold)),
                    Text('Current Balance',
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: light))
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget payNowButton() {
      return Container(
        margin: EdgeInsets.only(bottom: 84),
        child: CustomButton(
          title: 'Pay Now',
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          detailTransaction(),
          paymentsDetail(),
          payNowButton()
        ],
      ),
    );
  }
}
