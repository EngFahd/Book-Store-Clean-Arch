import 'package:book_store/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustemListViweItem extends StatelessWidget {
  const CustemListViweItem({
    super.key, required this.image,
  });
    final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child:  CustemBookImage(image: image),
      ),
    );
  }
}

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(imageUrl:image ?? "" ,fit:BoxFit.fill ,))
    );
  }
}
