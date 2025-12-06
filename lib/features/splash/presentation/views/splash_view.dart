import 'package:book/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:book/features/splash/splash_cubits/splash_animation/splash_animation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashAnimationCubit(),
      child: SafeArea(child: Scaffold(body: SplashViewBody())),
    );
  }
}
