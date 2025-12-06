import 'package:book/features/splash/presentation/views/widgets/splash_view_widgets/sliding_logo.dart';
import 'package:book/features/splash/presentation/views/widgets/splash_view_widgets/sliding_text.dart';
import 'package:book/features/splash/splash_cubits/splash_animation/splash_animation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart ';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late SplashAnimationCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of<SplashAnimationCubit>(context);
    cubit.startAnimation(this);
  }

  @override
  void dispose() {
    cubit.closeAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingLogo(cubit: cubit),

        const SizedBox(height: 9),

        SlidingText(cubit: cubit),
      ],
    );
  }
}


