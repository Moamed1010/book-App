
import 'package:book/core/utils/assets.dart';
import 'package:book/features/splash/splash_cubits/splash_animation/splash_animation_cubit.dart';
import 'package:flutter/material.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.cubit,
  });

  final SplashAnimationCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: cubit.slidingAnimation,
        child: Image.asset(AssetsData.logo),
      ),
    );
  }
}