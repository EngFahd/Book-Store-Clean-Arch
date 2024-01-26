import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/presentaion/manger/newest_box/newest_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:book_store/features/home/presentaion/views/widgets/pagination_listviwe_bestseller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViwe extends StatefulWidget {
  const BestSellerListViwe({super.key});

  @override
  State<BestSellerListViwe> createState() => _BestSellerListViweState();
}

class _BestSellerListViweState extends State<BestSellerListViwe> {
  final List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBoxCubit, NewestBoxState>(
        listener: (context, state) {
      if (state is NewestBoxSuccess) {
        books.addAll(state.books);
      }
      if (state is NewestBoxPaginationFuiler) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blueAccent,
            content: Text(
              state.errorMassages,
              style: const TextStyle(color: Colors.white),
            ),
            duration:
                const Duration(seconds: 3), 
            action: SnackBarAction(
              label: 'Dismiss',
              onPressed: () {},
            ),
          ),
        );
      }
    }, builder: (context, state) {
      if (state is NewestBoxPaggenationLoading ||
          state is NewestBoxSuccess ||
          state is NewestBoxPaginationFuiler) {
        return NewestListViwe(
          books: books,
        );
      } else if (state is NewestBoxFailuer) {
        return Center(child: Text(state.messages));
      }
      return const FeaturedBooksListViewLoadingIndicator();
    });
  }
}
