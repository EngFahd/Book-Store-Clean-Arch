import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustemListViweItem extends StatelessWidget {
  const CustemListViweItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: const CustemBookImage(),
      ),
    );
  }
}

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        // width: 100,
        // height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.red,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetsData.kTestim))),
      ),
    );
  }
}
