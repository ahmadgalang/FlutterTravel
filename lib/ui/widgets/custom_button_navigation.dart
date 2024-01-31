import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButtonNavigatonItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigatonItem({super.key , required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 18),
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(imageUrl),
          )),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparent,
          ),
        ),
      ],
    );
  }
}
