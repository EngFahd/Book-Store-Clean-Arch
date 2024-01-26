import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/manger/newest_box/newest_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListViwe extends StatefulWidget {
  const NewestListViwe({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;

  @override
  State<NewestListViwe> createState() => _FeaturedListViweState();
}

class _FeaturedListViweState extends State<NewestListViwe> {
  @override
  ScrollController scrollController = ScrollController();
  var nextPage = 1;
  var isLoading = false;
  @override
  void scroolLisner(ScrollController scrollController, BuildContext context) {
    scrollController.addListener(() async {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent * 0.7) {
        // Trigger API request to fetch more books
        if (!isLoading) {
          isLoading = true;
          await BlocProvider.of<NewestBoxCubit>(context)
              .featchNewestBox( pageNumber: nextPage++);
          isLoading = false;
        }
      }
    });
  }

  @override
  void initState() {
    scroolLisner(scrollController, context);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return  BestSellerItems(book: widget.books[index],);
      },
    );
  }
}