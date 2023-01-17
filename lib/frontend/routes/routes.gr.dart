// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:wuri/frontend/screens/auth/auth_screen.dart' as _i3;
import 'package:wuri/frontend/screens/auth/login_screen/login_screen.dart'
    as _i4;
import 'package:wuri/frontend/screens/auth/register_screen/create_username_screen.dart'
    as _i9;
import 'package:wuri/frontend/screens/auth/register_screen/create_wuri_pin_screen.dart'
    as _i10;
import 'package:wuri/frontend/screens/auth/register_screen/email_or_phone_screen.dart'
    as _i7;
import 'package:wuri/frontend/screens/auth/register_screen/register_screen.dart'
    as _i5;
import 'package:wuri/frontend/screens/auth/register_screen/select_email_or_phone_screen.dart'
    as _i6;
import 'package:wuri/frontend/screens/auth/register_screen/verify_account_screen.dart'
    as _i8;
import 'package:wuri/frontend/screens/auth/register_screen/welcome_screen.dart'
    as _i11;
import 'package:wuri/frontend/screens/onboarding_screen/onboarding_screen.dart'
    as _i2;
import 'package:wuri/frontend/screens/splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    AuthScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    RegisterScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterScreen(),
      );
    },
    SelectEmailOrPhoneScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.SelectEmailOrPhoneScreen(),
      );
    },
    EmailOrPhoneScreen.name: (routeData) {
      final args = routeData.argsAs<EmailOrPhoneScreenArgs>(
          orElse: () => const EmailOrPhoneScreenArgs());
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.EmailOrPhoneScreen(
          key: args.key,
          isEmail: args.isEmail,
        ),
      );
    },
    VerifyAccountScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.VerifyAccountScreen(),
      );
    },
    CreateUsernameScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.CreateUsernameScreen(),
      );
    },
    CreateWuriPinScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.CreateWuriPinScreen(),
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.WelcomeScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i12.RouteConfig(
          OnboardingScreen.name,
          path: '/onboarding',
        ),
        _i12.RouteConfig(
          AuthScreen.name,
          path: '/auth',
          children: [
            _i12.RouteConfig(
              LoginScreen.name,
              path: '',
              parent: AuthScreen.name,
            ),
            _i12.RouteConfig(
              RegisterScreen.name,
              path: 'register',
              parent: AuthScreen.name,
              children: [
                _i12.RouteConfig(
                  SelectEmailOrPhoneScreen.name,
                  path: '',
                  parent: RegisterScreen.name,
                ),
                _i12.RouteConfig(
                  EmailOrPhoneScreen.name,
                  path: 'email_or_phone_route',
                  parent: RegisterScreen.name,
                ),
                _i12.RouteConfig(
                  VerifyAccountScreen.name,
                  path: 'verify_account_route',
                  parent: RegisterScreen.name,
                ),
                _i12.RouteConfig(
                  CreateUsernameScreen.name,
                  path: 'create_username_route',
                  parent: RegisterScreen.name,
                ),
                _i12.RouteConfig(
                  CreateWuriPinScreen.name,
                  path: 'create_wuri_pin_route',
                  parent: RegisterScreen.name,
                ),
                _i12.RouteConfig(
                  WelcomeScreen.name,
                  path: 'welcome_route',
                  parent: RegisterScreen.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i12.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreen extends _i12.PageRouteInfo<void> {
  const OnboardingScreen()
      : super(
          OnboardingScreen.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingScreen';
}

/// generated route for
/// [_i3.AuthScreen]
class AuthScreen extends _i12.PageRouteInfo<void> {
  const AuthScreen({List<_i12.PageRouteInfo>? children})
      : super(
          AuthScreen.name,
          path: '/auth',
          initialChildren: children,
        );

  static const String name = 'AuthScreen';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreen extends _i12.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i5.RegisterScreen]
class RegisterScreen extends _i12.PageRouteInfo<void> {
  const RegisterScreen({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterScreen.name,
          path: 'register',
          initialChildren: children,
        );

  static const String name = 'RegisterScreen';
}

/// generated route for
/// [_i6.SelectEmailOrPhoneScreen]
class SelectEmailOrPhoneScreen extends _i12.PageRouteInfo<void> {
  const SelectEmailOrPhoneScreen()
      : super(
          SelectEmailOrPhoneScreen.name,
          path: '',
        );

  static const String name = 'SelectEmailOrPhoneScreen';
}

/// generated route for
/// [_i7.EmailOrPhoneScreen]
class EmailOrPhoneScreen extends _i12.PageRouteInfo<EmailOrPhoneScreenArgs> {
  EmailOrPhoneScreen({
    _i13.Key? key,
    bool isEmail = false,
  }) : super(
          EmailOrPhoneScreen.name,
          path: 'email_or_phone_route',
          args: EmailOrPhoneScreenArgs(
            key: key,
            isEmail: isEmail,
          ),
        );

  static const String name = 'EmailOrPhoneScreen';
}

class EmailOrPhoneScreenArgs {
  const EmailOrPhoneScreenArgs({
    this.key,
    this.isEmail = false,
  });

  final _i13.Key? key;

  final bool isEmail;

  @override
  String toString() {
    return 'EmailOrPhoneScreenArgs{key: $key, isEmail: $isEmail}';
  }
}

/// generated route for
/// [_i8.VerifyAccountScreen]
class VerifyAccountScreen extends _i12.PageRouteInfo<void> {
  const VerifyAccountScreen()
      : super(
          VerifyAccountScreen.name,
          path: 'verify_account_route',
        );

  static const String name = 'VerifyAccountScreen';
}

/// generated route for
/// [_i9.CreateUsernameScreen]
class CreateUsernameScreen extends _i12.PageRouteInfo<void> {
  const CreateUsernameScreen()
      : super(
          CreateUsernameScreen.name,
          path: 'create_username_route',
        );

  static const String name = 'CreateUsernameScreen';
}

/// generated route for
/// [_i10.CreateWuriPinScreen]
class CreateWuriPinScreen extends _i12.PageRouteInfo<void> {
  const CreateWuriPinScreen()
      : super(
          CreateWuriPinScreen.name,
          path: 'create_wuri_pin_route',
        );

  static const String name = 'CreateWuriPinScreen';
}

/// generated route for
/// [_i11.WelcomeScreen]
class WelcomeScreen extends _i12.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: 'welcome_route',
        );

  static const String name = 'WelcomeScreen';
}
