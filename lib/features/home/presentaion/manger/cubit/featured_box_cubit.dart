import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featured_box_state.dart';

class FeaturedBoxCubit extends Cubit<FeaturedBoxState> {
  FeaturedBoxCubit() : super(FeaturedBoxInitial());
}
