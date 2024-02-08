// import 'package:bloc/bloc.dart';
// import 'package:book_store/features/book%20detiles/domain/repo/book_detailes_repo.dart';
// import 'package:meta/meta.dart';

// part 'book_detailes_state.dart';

// class BookDetailesCubit extends Cubit<BookDetailesState> {
//   BookDetailesCubit(this.bookDetailesRepo) : super(BookDetailesInitial());
//   final BookDetailesRepo bookDetailesRepo;

//    Future<void> featchBestSellerBooks({required String category}) async {
//     emit(BookDetailesCubitLoading());
//     var result = await bookDetailesRepo.fetchSemilerBooks(category: category);
//     result.fold((failuer) {
//       emit(BookDetailesFailler(failuer.errMessage));
//     }, (books) {
//       emit(BookDetailesCubitSuccess(books));
//     });
//   }
// }
