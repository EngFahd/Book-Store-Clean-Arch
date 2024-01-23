import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/widgets/CustemButton.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemBookDetielsAppBar.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemRateListViweItem.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/ListVieweBookDetiels.dart';
import 'package:book_store/features/home/presentaion/views/widgets/buttonBook.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';

class BookDetiledBody extends StatelessWidget {
  const BookDetiledBody({super.key});

  @override
  Widget build(BuildContext context) {
    var wideth = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustemBookDetielsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wideth * 0.25),
                  child: const CustemBookImage(),
                ),
                const SizedBox(height: 30),
                Text(
                  "The Jungle Book",
                  style: Style.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text("Rudyard Kipling",
                      style: Style.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 14),
                const CustemRateListViweItem(),
                const SizedBox(height: 25),
                const ButtonBook(),
                const Expanded(child: SizedBox(height: 25)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also like",
                    style:
                        Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                const ListVieweBookDetiels(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        )
      ],
    );
  }
}
