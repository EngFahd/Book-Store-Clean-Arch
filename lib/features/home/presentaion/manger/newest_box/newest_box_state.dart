part of 'newest_box_cubit.dart';

@immutable
sealed class NewestBoxState {}

final class NewestBoxInitial extends NewestBoxState {}

final class NewestBoxLoaing extends NewestBoxState {}

final class NewestBoxSuccess extends NewestBoxState {
  final List<BookEntity> books;

  NewestBoxSuccess(this.books);
}

final class NewestBoxFailuer extends NewestBoxState {
  final String messages;

  NewestBoxFailuer(this.messages);
}
