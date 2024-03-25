import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ChecklistItem extends StatelessWidget {
  const ChecklistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/ic_checklist.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Kids Park',
                style: secondaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: regular),
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
                    image: AssetImage('assets/icons/ic_checklist.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Kids Park',
                style: secondaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: regular),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
