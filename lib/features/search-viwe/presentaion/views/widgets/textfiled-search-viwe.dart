import 'package:flutter/material.dart';

class TextFiledSearchView extends StatelessWidget {
  const TextFiledSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          hintText: "Search Books",
          suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
                color: Colors.white.withOpacity(0.2),
              )),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white.withOpacity(0.4)),
    );
  }
}
