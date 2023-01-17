
import 'package:auto_route/annotations.dart';
import 'package:wuri/frontend/screens/auth/auth_screen.dart';
import 'package:wuri/frontend/screens/auth/login_screen/login_screen.dart';
import 'package:wuri/frontend/screens/auth/register_screen/create_username_screen.dart';
import 'package:wuri/frontend/screens/auth/register_screen/register_screen.dart';
import 'package:wuri/frontend/screens/auth/register_screen/verify_account_screen.dart';
import 'package:wuri/frontend/screens/auth/register_screen/welcome_screen.dart';
import 'package:wuri/frontend/screens/onboarding_screen/onboarding_screen.dart';
import 'package:wuri/frontend/screens/splash_screen/splash_screen.dart';

import '../screens/auth/register_screen/create_wuri_pin_screen.dart';
import '../screens/auth/register_screen/email_or_phone_screen.dart';
import '../screens/auth/register_screen/select_email_or_phone_screen.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(path: "/", page: SplashScreen, initial: true),
    AutoRoute(path: "/onboarding", page: OnboardingScreen),
    AutoRoute(path: "/auth", page: AuthScreen, children: [
      AutoRoute(path: "", page: LoginScreen),
      AutoRoute(path: "register", page: RegisterScreen, children: [
        AutoRoute(path: "", page: SelectEmailOrPhoneScreen),
        AutoRoute(path: "email_or_phone_route", page: EmailOrPhoneScreen),
        AutoRoute(path: "verify_account_route", page: VerifyAccountScreen),
        AutoRoute(path: "create_username_route", page: CreateUsernameScreen),
        AutoRoute(path: "create_wuri_pin_route", page: CreateWuriPinScreen),
        AutoRoute(path: "welcome_route", page: WelcomeScreen),
      ]),
    ]),
  ],
  replaceInRouteName: "Route,Page"
)


class $AppRouter {}