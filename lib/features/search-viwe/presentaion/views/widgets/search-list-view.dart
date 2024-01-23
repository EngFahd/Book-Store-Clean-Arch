import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:flutter/material.dart';

class Searchlistviwe extends StatelessWidget {
  const Searchlistviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BestSellerItems();
      },
    );
  }
}
