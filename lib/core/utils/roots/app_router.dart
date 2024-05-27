import 'package:go_router/go_router.dart';
import 'package:eduai_parent/features/auth/presentation/views/login_view.dart';
import 'package:eduai_parent/features/auth/presentation/views/register_view.dart';
import 'package:eduai_parent/features/main_layout/presentation/views/main_layout_view.dart';

import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    //Splash Roots
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    //auth Roots
    GoRoute(
      path: "/loginView",
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: "/registerView",
      builder: (context, state) => const RegisterView(),
    ),
    //main Roots
    GoRoute(
      path: "/mainLayoutView",
      builder: (context, state) => MainLayoutView(),
    ),
  ]);
}
