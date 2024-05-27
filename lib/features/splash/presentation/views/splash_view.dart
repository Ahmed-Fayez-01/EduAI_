import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:eduai_parent/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/services.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
}
