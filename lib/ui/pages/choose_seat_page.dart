import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';
import 'package:flutter_travel/ui/widgets/custom_button.dart';
import 'package:flutter_travel/ui/widgets/custom_seat_page.dart';

class ChooseSeatPage extends StatefulWidget {
  const ChooseSeatPage({super.key});

  @override
  State<ChooseSeatPage> createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return SizedBox(
        height: 72,
        width: 160,
        child: Text(
          "Select Your \nFavorite Seat",
          style:
              secondaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/ic_available.png'),
                    ),
                  ),
                ),
                const Text('Available'),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/ic_selected.png'),
                    ),
                  ),
                ),
                const Text('Selected'),
                const SizedBox(width: 10),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 6),
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/ic_unavailable.png'),
                    ),
                  ),
                ),
                const Text('Unvailable'),
                const SizedBox(width: 10),
              ],
            )
          ],
        ),
      );
    }

    Widget selectedSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kwhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            // NOTE : HEADING SEAT
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('A'), Text('B'), Text(''), Text('C'), Text('D')],
            ),
            const SizedBox(
              height: 16,
            ),

            // NOTE : SEAT
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSeat(status: 2),
                const CustomSeat(status: 1),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const CustomSeat(status: 0),
                const CustomSeat(status: 0)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSeat(status: 2),
                const CustomSeat(status: 1),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const CustomSeat(status: 0),
                const CustomSeat(status: 0)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSeat(status: 2),
                const CustomSeat(status: 1),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const CustomSeat(status: 0),
                const CustomSeat(status: 0)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSeat(status: 2),
                const CustomSeat(status: 1),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const CustomSeat(status: 0),
                const CustomSeat(status: 0)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSeat(status: 2),
                const CustomSeat(status: 1),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const CustomSeat(status: 0),
                const CustomSeat(status: 0)
              ],
            ),

            // NOTE :
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3,B3',
                    style: secondaryTextStyle.copyWith(fontWeight: light),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'Rp. 250.000',
                    style: primaryTextStyle.copyWith(fontWeight: bold),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: CustomButton(
          title: "Continue to Checkout",
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), seatStatus(), selectedSeat(), checkoutButton()],
        ),
      ),
    );
  }
}
