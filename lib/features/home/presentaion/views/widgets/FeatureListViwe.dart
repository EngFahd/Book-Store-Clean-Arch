import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/home/presentaion/manger/featured_box_cubite/featured_box_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViwe extends StatefulWidget {
  const FeaturedListViwe({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;

  @override
  State<FeaturedListViwe> createState() => _FeaturedListViweState();
}

class _FeaturedListViweState extends State<FeaturedListViwe> {
  @override
  ScrollController scrollController = ScrollController();
  var nextPage = 1;
  var isLoading = false;
  @override
  void scroolLisner(ScrollController scrollController, BuildContext context) {
    scrollController.addListener(() async {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent * 0.7) {
        // Trigger API request to fetch more books
        if (!isLoading) {
          isLoading = true;
          await BlocProvider.of<FeaturedBoxCubit>(context)
              .featchFeatsherdBox(pageNumber: nextPage++);
          isLoading = false;
        }
      }
    });
  }

  @override
  void initState() {
    scroolLisner(scrollController, context);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        controller: scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustemListViweItem(image: widget.books[index].image ?? "");
        },
      ),
    );
  }
}

// class FeaturedListViwe extends StatelessWidget {
//   const FeaturedListViwe({super.key, required this.books});
//   final List<BookEntity> books;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * 0.3,
//       child: ListView.builder(
//         itemCount: books.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return CustemListViweItem(
//             image: books[index].image ?? "",
//           );
//         },
//       ),
//     );
//   }
// }