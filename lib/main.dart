import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/functions/setup_service_locator.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/simple_bloc_opserver.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home_repo_implemnt.dart';
import 'package:book_store/features/home/domain/use-case/featch_feature_books_use_case.dart';
import 'package:book_store/features/home/domain/use-case/featch_newst_books_use_case.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/manger/newest_box/newest_box_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  setup();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturesBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocOperver();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBoxCubit(
            FeatchFeatureBooksUseCase(gitIt.get<HomeRepoImplemnt>()),
          )..featchFeatsherdBox(),
        ),
        BlocProvider(
          create: (context) => NewestBoxCubit(
            FeatchNewestBooksUseCase(gitIt.get<HomeRepoImplemnt>()),
          )..featchNewestBox(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kMainColor,
            // =============== remmber this
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme)),
      ),
    );
  }
}
