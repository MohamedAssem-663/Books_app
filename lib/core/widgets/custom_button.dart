import 'package:books_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      this.borderRadius = BorderRadius.zero,
      required this.textColor,
      this.fontSize});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final double? fontSize;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: widget.borderRadius,
          ),
        ),
        child: Text(
          widget.text,
          style: Styles.textStyle18.copyWith(
              color: widget.textColor,
              fontWeight: FontWeight.w900,
              fontSize: widget.fontSize),
        ),
      ),
    );
  }
}
