import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:flutter_medic/src/common/constants/storage_constants.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/cart/cart_bloc.dart';
import 'package:flutter_medic/src/screens/analyzes/view/analyzes_screen.dart';
import 'package:flutter_medic/src/screens/cart/view/cart_screen.dart';
import 'package:flutter_medic/src/screens/email_verification/view/email_verification_screen.dart';
import 'package:flutter_medic/src/screens/fill_patient_card/view/fill_patient_card_screen.dart';
import 'package:flutter_medic/src/screens/main/main_wrapper_screen.dart';
import 'package:flutter_medic/src/screens/onboarding/view/onboarding_screen.dart';
import 'package:flutter_medic/src/screens/pin/view/pin_screen.dart';
import 'package:flutter_medic/src/screens/profile/view/profile_screen.dart';
import 'package:flutter_medic/src/screens/sign_in/view/sign_in_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/onboarding',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/signIn',
        ),
        AutoRoute(
          page: EmailVerificationRoute.page,
          path: '/emailVerification',
        ),
        AutoRoute(
          page: PinRoute.page,
          path: '/pin',
        ),
        AutoRoute(
          page: FillPatientCardRoute.page,
          path: '/fillPatientCard',
        ),
        AutoRoute(
          page: MainWrapperRoute.page,
          path: '/',
          children: [
            RedirectRoute(
              path: '',
              redirectTo: 'analyzes',
            ),
            AutoRoute(
              page: AnalyzesTab.page,
              path: 'analyzes',
              children: [
                AutoRoute(
                  page: AnalyzesRoute.page,
                  path: '',
                ),
                AutoRoute(
                  page: CartRoute.page,
                  path: 'cart',
                ),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              path: 'profile',
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  path: '',
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  void onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) {
    final controller = GetIt.I.get<AuthController>();

    final prefs = GetIt.I.get<SharedPreferences>();

    final isShowOnboard =
        prefs.getBool(StorageConstants.isShowOnboarding) != null;

    final isAuth = controller.userId != null;

    final isOnboard = resolver.route.name == OnboardingRoute.name;
    final isSignIn = resolver.route.name == SignInRoute.name;
    final isEmailVerification =
        resolver.route.name == EmailVerificationRoute.name;
    final isPin = resolver.route.name == PinRoute.name;
    final isFillPatientCard = resolver.route.name == FillPatientCardRoute.name;

    if (isAuth ||
        isOnboard ||
        isSignIn ||
        isEmailVerification ||
        isPin ||
        isFillPatientCard) {
      resolver.next();
    } else {
      if (isShowOnboard) {
        resolver.redirect(const SignInRoute());
      } else {
        resolver.redirect(const OnboardingRoute());
      }
    }
  }
}

@RoutePage(name: 'AnalyzesTab')
class AnalyzesTabPage extends AutoRouter {
  const AnalyzesTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
