import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-List-Viwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViweBody extends StatelessWidget {
  const HomeViweBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustemAppBar(),
              CustemListViwe(),
              SizedBox(height: 50),
              TextBestSeller(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListViwe(),
          ),
        )
      ],
    );
  }
}

class TextBestSeller extends StatelessWidget {
  const TextBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text("Best Sellers",
          style: Style.textStyle18.copyWith(fontFamily: kGetSectraFine)),
    );
  }
}
