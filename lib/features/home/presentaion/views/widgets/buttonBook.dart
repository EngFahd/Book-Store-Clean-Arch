import 'package:book_store/core/widgets/CustemButton.dart';
import 'package:flutter/material.dart';

class ButtonBook extends StatelessWidget {
  const ButtonBook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustemButton(
            text: r'19.99$',
            backgroundColor: Colors.white,
            colorText: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustemButton(
            text: 'Free preview',
            fontSize: 16,
            backgroundColor: Color(0xffEf8262),
            colorText: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
