import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/use-case/featch_feature_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_box_state.dart';

class FeaturedBoxCubit extends Cubit<FeaturedBoxState> {
  final FeatchFeatureBooksUseCase featchFeatureBooksUseCase;

  FeaturedBoxCubit(this.featchFeatureBooksUseCase)
      : super(FeaturedBoxInitial());

  Future<void> featchFeatsherdBox({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBoxLoading());
    } else {
      emit(FeaturedBoxLoadingPagination());
    }
    var result = await featchFeatureBooksUseCase.call(pageNumber);
    result.fold((faliuer) => emit(FeaturedBoxFailer(faliuer.errMessage)),
        (books) => emit(FeaturedBoxSucess(books)));
  }
}
