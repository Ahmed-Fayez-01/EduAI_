import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/services/local_services/cache_keys.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
        // if(CacheKeysManger.tokenStatus() != "")
        //   {
            GoRouter.of(context).pushReplacement("/loginView");
          // }else
          //   {
          //     GoRouter.of(context).pushReplacement("/introView");
          //   }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetData.logo,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width*.4,
            ),
          ],
        ),
      ],
    );
  }
}
