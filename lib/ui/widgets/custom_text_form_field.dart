import 'package:flutter/material.dart';
import '../../shared/theme.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final String labelText;
  bool obscuredText;
  final String hintText;
  final bool isIcon;

  CustomTextFormField(
      {super.key,
      required this.labelText,
      this.obscuredText = false,
      required this.hintText,
      this.isIcon = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(widget.labelText, style: secondaryTextStyle),
        const SizedBox(height: 6),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: widget.isIcon
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.obscuredText = !widget.obscuredText;
                      });
                    },
                    child: Icon(
                      widget.obscuredText
                          ? Icons.visibility_off_sharp
                          : Icons.visibility,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            hintText: widget.hintText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 205, 205, 205)),
          ),
          cursorColor: kSecondaryColor,
          obscureText: widget.obscuredText,
        )
      ],
    );
  }
}
