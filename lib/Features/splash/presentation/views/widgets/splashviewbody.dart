import 'package:booklyapp/Features/home/presintation/views/home_view.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/assetdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

late Animation<Offset> slidingAnimation;
late AnimationController animation;

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  @override
  @override
  void initState() {
    super.initState();
    inisSlidingAnimation();
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: KprimaryDuration);
    });
  }

  void inisSlidingAnimation() {
    animation =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animation);
    animation.forward();
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(Assetdata.logo),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          );
        });
  }
}
