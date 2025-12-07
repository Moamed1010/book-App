import 'package:bloc/bloc.dart';
import 'package:book/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as Getx;

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

    slidingAnimation =
        Tween<Offset>(
          begin: const Offset(0, 5),
          end: const Offset(0, 0),
        ).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );

    animationController.forward().whenComplete(() {
      NavigateToHome();
    });

    emit(SplashAnimationStarted());
  }

  void NavigateToHome() {
    Getx.Get.to(
      () => const HomeView(),
      transition: Getx.Transition.fade,
      duration: const Duration(milliseconds: 900),
    );
  }

  void closeAnimation() {
    animationController.reverse();
    emit(SplashAnimationClosed());
  }
}
