import 'package:book_store/constanceApp.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:book_store/features/search-viwe/presentaion/views/widgets/search-list-view.dart';
import 'package:book_store/features/search-viwe/presentaion/views/widgets/textfiled-search-viwe.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextFiledSearchView(),
          SizedBox(
            height: 20
          ),
          Expanded(child: Searchlistviwe())
        ],
      ),
    );
  }
}

