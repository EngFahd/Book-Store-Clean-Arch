import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
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
      },
      builder: (context, state) {
        if (state is FeaturedBoxLoadingPagination || state is FeaturedBoxSucess) {
          return FeaturedListViwe(
            books:books,
          );
        } else if (state is FeaturedBoxFailer) {
          return Center(child: Text(state.message));
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
