import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/use-case/featch_newst_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_box_state.dart';

class NewestBoxCubit extends Cubit<NewestBoxState> {
  NewestBoxCubit(this.featchNewestBooksUseCase) : super(NewestBoxInitial());
  final FeatchNewestBooksUseCase featchNewestBooksUseCase;
  Future<void> featchNewestBox({int pageNumber =0}) async {
    emit((NewestBoxLoaing()));
    var result = await featchNewestBooksUseCase.call(pageNumber);
    result.fold(
        (failuer) => emit(NewestBoxFailuer(failuer.errMessage)),
         (books) => emit(NewestBoxSuccess(books)));
  }
}
