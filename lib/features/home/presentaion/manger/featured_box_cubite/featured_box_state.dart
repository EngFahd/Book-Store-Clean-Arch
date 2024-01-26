part of 'featured_box_cubit.dart';

@immutable
sealed class FeaturedBoxState {}

final class FeaturedBoxInitial extends FeaturedBoxState {}

final class FeaturedBoxLoading extends FeaturedBoxState {}
final class FeaturedBoxLoadingPagination extends FeaturedBoxState {}

final class FeaturedBoxSucess extends FeaturedBoxState {
  final List<BookEntity> books;

  FeaturedBoxSucess(this.books);
}

final class FeaturedBoxFailer extends FeaturedBoxState {
  final String message;

  FeaturedBoxFailer(this.message);
}
