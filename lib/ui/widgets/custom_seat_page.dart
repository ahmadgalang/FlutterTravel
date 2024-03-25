import 'package:flutter/material.dart';
import 'package:flutter_travel/shared/theme.dart';

class CustomSeat extends StatefulWidget {
  final int status;

  const CustomSeat(
      {super.key,
      required this.status});

  @override
  State<CustomSeat> createState() => _CustomSeatState();
}

class _CustomSeatState extends State<CustomSeat> {
  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      return switch (widget.status) {
        0 => kUnavailableColor,
        1 => kSelected,
        2 => kAvailableColor,
        _ => kUnavailableColor
      };
    }

    borderColor() {
      return switch (widget.status) {
        0 => kTransparent,
        1 => kSelected,
        2 => kSelected,
        _ => kUnavailableColor
      };
    }

    chooseSeat() {
      return Center(child: switch (widget.status) { 0 => const Text(""), 1 => Text('You', style: whiteTextStyle.copyWith(fontWeight: bold),), _ => null });
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(defaultRadius),
            border: Border.all(color: borderColor(), width: 2)),
        child: chooseSeat()
      ),
    );
  }
}
