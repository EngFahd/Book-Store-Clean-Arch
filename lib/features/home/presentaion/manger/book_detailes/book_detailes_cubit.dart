// import 'package:bloc/bloc.dart';
// import 'package:book_store/features/home/domain/entities/book_entities.dart';
// import 'package:book_store/features/home/domain/use-case/featch_book_detailes.dart';

// part 'book_detailes_state.dart';

// class BookDetailesCubit extends Cubit<BookDetailesState> {
//   BookDetailesCubit(this.featchBooksDetailesUseCase) : super(BookDetailesInitial());
//   final FeatchBooksDetailesUseCase featchBooksDetailesUseCase;

//   Future<void> getBookDetailes() async {
//     emit(BookDetailesLoading());

//     var result = await featchBooksDetailesUseCase.call();
//     result.fold((failuer) {
//       emit(BookDetailesFailer(failuer.errMessage));
//     }, (books) {
//       emit(BookDetailesSucess(books[0]));
//     });
//   }
// }
