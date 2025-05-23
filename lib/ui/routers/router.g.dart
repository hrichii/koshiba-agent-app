// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $authorizedStatefulShellRouteData,
      $resetPasswordSendRouteData,
      $signInRouteData,
      $signUpSendRouteData,
      $signUpVerifyRouteData,
    ];

RouteBase get $authorizedStatefulShellRouteData =>
    StatefulShellRouteData.$route(
      factory: $AuthorizedStatefulShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              name: '/home',
              factory: $HomeRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/calenders',
              name: '/calenders',
              factory: $CalenderRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/documents',
              name: '/documents',
              factory: $DocumentRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/settings',
              name: '/settings',
              factory: $SettingRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AuthorizedStatefulShellRouteDataExtension
    on AuthorizedStatefulShellRouteData {
  static AuthorizedStatefulShellRouteData _fromState(GoRouterState state) =>
      const AuthorizedStatefulShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CalenderRouteDataExtension on CalenderRouteData {
  static CalenderRouteData _fromState(GoRouterState state) =>
      const CalenderRouteData();

  String get location => GoRouteData.$location(
        '/calenders',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DocumentRouteDataExtension on DocumentRouteData {
  static DocumentRouteData _fromState(GoRouterState state) =>
      const DocumentRouteData();

  String get location => GoRouteData.$location(
        '/documents',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingRouteDataExtension on SettingRouteData {
  static SettingRouteData _fromState(GoRouterState state) =>
      const SettingRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $resetPasswordSendRouteData => GoRouteData.$route(
      path: '/reset-password/send',
      name: '/reset-password/send',
      factory: $ResetPasswordSendRouteDataExtension._fromState,
    );

extension $ResetPasswordSendRouteDataExtension on ResetPasswordSendRouteData {
  static ResetPasswordSendRouteData _fromState(GoRouterState state) =>
      const ResetPasswordSendRouteData();

  String get location => GoRouteData.$location(
        '/reset-password/send',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRouteData => GoRouteData.$route(
      path: '/sing-in',
      name: '/sing-in',
      factory: $SignInRouteDataExtension._fromState,
    );

extension $SignInRouteDataExtension on SignInRouteData {
  static SignInRouteData _fromState(GoRouterState state) =>
      const SignInRouteData();

  String get location => GoRouteData.$location(
        '/sing-in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpSendRouteData => GoRouteData.$route(
      path: '/sign-up/send',
      name: '/sign-up/send',
      factory: $SignUpSendRouteDataExtension._fromState,
    );

extension $SignUpSendRouteDataExtension on SignUpSendRouteData {
  static SignUpSendRouteData _fromState(GoRouterState state) =>
      const SignUpSendRouteData();

  String get location => GoRouteData.$location(
        '/sign-up/send',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpVerifyRouteData => GoRouteData.$route(
      path: '/sign-up/verify',
      name: '/sign-up/verify',
      factory: $SignUpVerifyRouteDataExtension._fromState,
    );

extension $SignUpVerifyRouteDataExtension on SignUpVerifyRouteData {
  static SignUpVerifyRouteData _fromState(GoRouterState state) =>
      SignUpVerifyRouteData(
        email: state.uri.queryParameters['email']!,
      );

  String get location => GoRouteData.$location(
        '/sign-up/verify',
        queryParams: {
          'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'5ffa95b90878634f5253075b0c05e4b3542b8437';

/// See also [Router].
@ProviderFor(Router)
final routerProvider = NotifierProvider<Router, GoRouter>.internal(
  Router.new,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Router = Notifier<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
