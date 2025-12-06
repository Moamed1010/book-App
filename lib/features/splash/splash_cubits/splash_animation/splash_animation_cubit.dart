import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'splash_animation_state.dart';

class SplashAnimationCubit extends Cubit<SplashAnimationState> {
  SplashAnimationCubit() : super(SplashAnimationInitial());

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void startAnimation(TickerProvider vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
    );

    animationController.forward();
    emit(SplashAnimationStarted());
  }

  void closeAnimation() {
    animationController.reverse();
    emit(SplashAnimationClosed());
  }

}
