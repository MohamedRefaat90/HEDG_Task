import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/helpers/custom_transition_page.dart';
import 'package:hedg_task/features/auth/signup/presentation/screen/signup.dart';
import 'package:hedg_task/features/home/presentation/screen/home_screen.dart';
import 'package:hedg_task/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:hedg_task/features/splash/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'features/auth/forget_password/presentation/screen/forget_pass_screen.dart';
import 'features/auth/login/presentation/screen/login_screen.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
      path: AppRoutes.onBoarding,
      name: AppRoutes.onBoarding,
      pageBuilder: (context, state) => CustomTransition(
          child: const OnboardingScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      pageBuilder: (context, state) => CustomTransition(
          child: const LoginScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.signup,
      name: AppRoutes.signup,
      pageBuilder: (context, state) => CustomTransition(
          child: const SignupScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.forgetPassword,
      name: AppRoutes.forgetPassword,
      pageBuilder: (context, state) => CustomTransition(
          child: const ForgetPassScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.home,
      pageBuilder: (context, state) => CustomTransition(
          child: const HomeScreen(),
          transitionType: PageTransitionType.rightToLeft)),
]);
