import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViweBlocBuilder extends StatefulWidget {
  const FeaturedListViweBlocBuilder({
    super.key,
  });

  @override
  State<FeaturedListViweBlocBuilder> createState() =>
      _FeaturedListViweBlocBuilderState();
}

class _FeaturedListViweBlocBuilderState
    extends State<FeaturedListViweBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBoxCubit, FeaturedBoxState>(
      listener: (context, state) {
        if (state is FeaturedBoxSucess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBoxPaginationFailur) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Text(
                state.errorMassage,
                style: const TextStyle(color: Colors.white),
              ),
              duration:
                  const Duration(seconds: 3), // You can customize the duration
              action: SnackBarAction(
                label: 'Dismiss',
                onPressed: () {
                  // Code to execute when the user taps the "Dismiss" action
                },
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedBoxLoadingPagination ||
            state is FeaturedBoxSucess ||
            state is FeaturedBoxPaginationFailur) {
          return FeaturedListViwe(
            books: books,
          );
        } else if (state is FeaturedBoxFailer) {
          return Center(child: Text(state.message));
        }
        return const Center(
          child: FeaturedBooksListViewLoadingIndicator(),
        );
      },
    );
  }
}
