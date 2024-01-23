import 'package:book_store/features/home/presentaion/views/widgets/book-Detiles-body.dart';
import 'package:flutter/material.dart';

class BookDetilesViwe extends StatelessWidget {
  const BookDetilesViwe({super.key});
  static String id = 'BookDetilesViwe';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetiledBody(),
      ),
    );
  }
}
