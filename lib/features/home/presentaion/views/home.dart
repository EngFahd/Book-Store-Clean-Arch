import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-List-Viwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_app_bar.dart';
import 'package:book_store/features/home/presentaion/views/widgets/home-viwe-body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViweBody(),
    );
  }
}
