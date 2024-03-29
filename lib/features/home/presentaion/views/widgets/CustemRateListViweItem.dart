import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustemRateListViweItem extends StatelessWidget {
  const CustemRateListViweItem({
    super.key, required this.book,
  });
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          "${book.rating}"?? "",
          style: Style.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "(245)",
          style: Style.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
