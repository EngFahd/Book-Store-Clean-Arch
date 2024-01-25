import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/functions/setup_service_locator.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/domain/repo/home_repo_implemnt.dart';
import 'package:book_store/features/home/domain/use-case/featch-feature-books-use-case.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/book-Detils-viwe.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:go_router/go_router.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturesBox);
  await Hive.openBox(kNewestBox);
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
            FeatchFeatureBooksUseCase(
              getIt<HomeRepoImplemnt>(),
            ),
          ),
        )
      ],
      child: GetMaterialApp(
        routes: {
          BookDetilesViwe.id: (context) => const BookDetilesViwe(),
          SearchView.id: (context) => const SearchView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kMainColor,
            // =============== remmber this
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme)),
        home: const SplashViwe(),
      ),
    );
  }
}

