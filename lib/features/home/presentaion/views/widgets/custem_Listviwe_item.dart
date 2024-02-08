import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustemFeaturedListViweItem extends StatelessWidget {
  const CustemFeaturedListViweItem({
    super.key,
    required this.book,
  });
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // GoRouter.of(context).push(kBookDetailes, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: CustemBookImage(image: book.image ?? ""),
        ),
      ),
    );
  }
}

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: image ?? "",
              fit: BoxFit.fill,
            )));
  }
}
