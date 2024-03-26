import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;

  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.value,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              color: Colors
                  .transparent, // Tambahkan warna atau backgroundBlendMode
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/ic_checklist.png',
                ),
              ),
            ),
          ),
          Text(
            title,
            style: secondaryTextStyle.copyWith(fontWeight: light, fontSize: 14),
          ),
          const Spacer(),
          Text(
            value,
            style: secondaryTextStyle.copyWith(
                fontWeight: semiBold, fontSize: 14, color: valueColor),
          )
        ],
      ),
    );
  }
}
