
import 'package:book/features/splash/splash_cubits/splash_animation/splash_animation_cubit.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.cubit,
  });

  final SplashAnimationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: cubit.slidingAnimation,
      child: const Text(
        "Read Free Book",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
      ),
    );
  }
}