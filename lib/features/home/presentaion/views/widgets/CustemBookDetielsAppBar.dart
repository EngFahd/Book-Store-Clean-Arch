import 'package:flutter/material.dart';

class CustemBookDetielsAppBar extends StatelessWidget {
  const CustemBookDetielsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_outlined)),
      ],
    );
  }
}
