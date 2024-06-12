import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/helpers/custom_transition_page.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/screen/id_preview_bootmsheet.dart';
import 'package:hedg_task/features/auth/e_kyc/presentation/screen/pending_approval_screen.dart';
import 'package:hedg_task/features/auth/forget_password/presentation/screen/reset_password_screen.dart';
import 'package:hedg_task/features/auth/signup/presentation/screen/signup.dart';
import 'package:hedg_task/features/auth/signup/presentation/screen/varification_screen.dart';
import 'package:hedg_task/features/home/cubit/home_cubit.dart';
import 'package:hedg_task/features/home/presentation/screen/home_navigation.dart';
import 'package:hedg_task/features/home/presentation/screen/home_screen.dart';
import 'package:hedg_task/features/onboarding/presentation/screen/onboarding_screen.dart';
import 'package:hedg_task/features/splash/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'features/auth/e_kyc/cubit/e_kyc_cubit.dart';
import 'features/auth/e_kyc/presentation/screen/E-KYC_screen.dart';
import 'features/auth/face_id/presentation/screen/face_id_screen.dart';
import 'features/auth/forget_password/presentation/screen/forget_pass_screen.dart';
import 'features/auth/login/presentation/screen/login_screen.dart';

GoRouter router = GoRouter(initialLocation: AppRoutes.homeNavigation, routes: [
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
      path: AppRoutes.resetPassword,
      name: AppRoutes.resetPassword,
      pageBuilder: (context, state) => CustomTransition(
          child: const ResetPasswordScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.faceId,
      name: AppRoutes.faceId,
      pageBuilder: (context, state) => CustomTransition(
          child: const FaceIdScreen(),
          transitionType: PageTransitionType.fade)),
  GoRoute(
      path: AppRoutes.varificaition,
      name: AppRoutes.varificaition,
      pageBuilder: (context, state) => CustomTransition(
          child: const VarificationScreen(),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.eKYC,
      name: AppRoutes.eKYC,
      pageBuilder: (context, state) => CustomTransition(
          child: BlocProvider<EKycCubit>(
            create: (context) => EKycCubit(),
            child: const EKYCScreen(),
          ),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.penndingApproval,
      name: AppRoutes.penndingApproval,
      pageBuilder: (context, state) => CustomTransition(
          child: BlocProvider<EKycCubit>.value(
            value: EKycCubit(),
            child: const PendingApprovalScreen(),
          ),
          transitionType: PageTransitionType.rightToLeft)),
  GoRoute(
      path: AppRoutes.homeNavigation,
      name: AppRoutes.homeNavigation,
      pageBuilder: (context, state) => CustomTransition(
          child: BlocProvider<HomeCubit>(
            create: (context) => HomeCubit(),
            child: const HomeNavigation(),
          ),
          transitionType: PageTransitionType.bottomToTop)),
  GoRoute(
      path: AppRoutes.home,
      name: AppRoutes.home,
      pageBuilder: (context, state) => CustomTransition(
          child: BlocProvider<HomeCubit>.value(
            value: HomeCubit(),
            child: const HomeScreen(),
          ),
          transitionType: PageTransitionType.bottomToTop)),
]);
