import 'package:book_store/features/home/domain/entities/book_entities.dart';
import 'package:book_store/features/book%20detiles/presntaion/view/widgets/book-Detiles-body.dart';
import 'package:flutter/material.dart';

class BookDetilesViwe extends StatelessWidget {
  const BookDetilesViwe({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetiledBody(),
      ),
    );
  }
}
