import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.kLogo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.id);
              },
              icon: const Icon(
                Icons.search,
                size: 24,
              ))
        ],
      ),
    );
  }
}
