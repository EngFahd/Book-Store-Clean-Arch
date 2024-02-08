import 'package:book_store/core/functions/setup_service_locator.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/book%20detiles/presntaion/view/book_detils_viwe.dart';
import 'package:book_store/features/home/presentaion/views/home.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const String kSpalsh = '/';
const String kHome = '/homeView';
const String kSearchViwe = '/SearchViwe';
const String kBookDetailes = '/BookDetailes';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSpalsh,
        builder: (context, state) => const SplashViwe(),
      ),

      GoRoute(
        path: kHome,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 1500),
            fullscreenDialog: true,
            key: state.pageKey,
            child: const Home(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeOutQuad).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: kSearchViwe,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 500),
            fullscreenDialog: true,
            key: state.pageKey,
            child: const SearchView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOutCubicEmphasized)
                    .animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      // GoRoute(
      //   path: kBookDetailes,
      //   pageBuilder: (context, state) {
      //     return CustomTransitionPage(
      //       transitionDuration: const Duration(milliseconds: 500),
      //       fullscreenDialog: true,
      //       key: state.pageKey,
      //       child: const BookDetilesViwe(),
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) {
      //         return FadeTransition(
      //           opacity: CurveTween(curve: Curves.easeInOutCubicEmphasized)
      //               .animate(animation),
      //           child: child,
      //         );
      //       },
      //     );
      //   }, builder: (context, state) => BlocProvider(
      //     create: (context) => BookDetailesCubit(gitIt<HomeRepoImpl>()),
      //     child: BookDetilesViwe(: state.extra as BookEntity),
      //   ),
      // ),
      
      // ,
      // GoRoute(
      //   path: '/bookDetilesView',
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => BookDetailesCubit(gitIt<HomeRepoImpl>()),
      //     child: BookDetilesViwe(bookModel: state.extra as BookModel),
      //   ),
      // ),
      // GoRoute(
      //   path: '/bookSearchView',
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SearchItemsCubit(gitIt<SearchViweRepoImplement>()),
      //     child: SearchView(),
      //   ),
      // ),
    ],
  );
}
