import 'package:book_store/constanceApp.dart';
import 'package:book_store/features/home/presentaion/views/book-Detils-viwe.dart';
import 'package:book_store/features/home/presentaion/views/home.dart';
import 'package:book_store/features/home/presentaion/views/widgets/book-Detiles-body.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:book_store/features/spashview/presntation/views/widgets/splashViweBody.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:go_router/go_router.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
    );
  }
}
  // final _router = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const SplashViwe(),
  //     ),
  //   ],
  // );
