import 'package:book_store/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({
    super.key,
    required this.colorText,
    this.borderRadius,
    required this.backgroundColor,
    required this.text,  this.fontSize,
  });

  final Color colorText;
  final double? fontSize;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Style.textStyle18
              .copyWith(color: colorText, fontWeight: FontWeight.w900,
              fontSize: fontSize
              ),
        ),
      ),
    );
  }
}
