import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViweBlocBuilder extends StatelessWidget {
  const FeaturedListViweBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBoxCubit, FeaturedBoxState>(
      builder: (context, state) {
        if (state is FeaturedBoxSucess) {
          return FeaturedListViwe(
            books: state.books,
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
