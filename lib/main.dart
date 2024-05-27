import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:eduai_parent/features/profile/presentation/views/view_models/upload_image_profile/upload_image_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/roots/app_router.dart';
import 'core/utils/services/local_services/cache_helper.dart';
import 'core/utils/services/remote_services/service_locator.dart';
import 'core/utils/theme/app_theme.dart';
import 'features/main_layout/presentation/view_model/change_nav_bar_status/change_nav_bar_status_cubit.dart';
import 'features/schedules/presentation/view_models/change_tabs_cubit/schedule_tabs_cubit.dart';




Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  setup();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale("ar"),Locale("en")],
        saveLocale: true,
        path: "lib/core/language", // <-- change the path of the translation files
        child: const EduAiTeacher()),
  );
}

class EduAiTeacher extends StatelessWidget {
  const EduAiTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangeNavBarStatusCubit()),
        BlocProvider(create: (context) => ScheduleTabsCubit()),
        BlocProvider(create: (context) => UploadImageProfileCubit()),
      ],
      child: MaterialApp.router(
        title: "EduAI Teacher",
        theme: themeDataLight,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
