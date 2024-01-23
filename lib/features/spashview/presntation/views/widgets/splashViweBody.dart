import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/home/presentaion/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // give valu 0 to 2
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    intSlideAnimations();
    addNavigatorAnimation();

    // dont forgite Slideanimation widget on the widget animated and give position
  }

// =====================
  void addNavigatorAnimation() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const Home(),
          transition: Transition.leftToRightWithFade, duration: kDuration);
    });
  }

  void intSlideAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidinganimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // give shildern all width perant
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.kLogo),
        const SizedBox(
          height: 10,
        ),
        AnimatedBuilder(
            animation: slidinganimation,
            builder: (context, child) {
              return SlideTransition(
                position: slidinganimation,
                child: const Text(
                  "Read free books",
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }
}
