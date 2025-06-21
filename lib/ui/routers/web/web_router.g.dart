// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $calenderRouteData,
  $scheduleDetailRouteData,
  $scheduleAddRoute,
  $signInRouteData,
  $signUpSendRouteData,
  $signUpVerifyRouteData,
  $resetPasswordSendRouteData,
];

RouteBase get $calenderRouteData => GoRouteData.$route(
  path: '/schedules',
  name: '/schedules',

  factory: _$CalenderRouteData._fromState,
);

mixin _$CalenderRouteData on GoRouteData {
  static CalenderRouteData _fromState(GoRouterState state) =>
      const CalenderRouteData();

  @override
  String get location => GoRouteData.$location('/schedules');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $scheduleDetailRouteData => GoRouteData.$route(
  path: '/schedules/detauil',
  name: '/schedules/detauil',

  factory: _$ScheduleDetailRouteData._fromState,
);

mixin _$ScheduleDetailRouteData on GoRouteData {
  static ScheduleDetailRouteData _fromState(GoRouterState state) =>
      ScheduleDetailRouteData(
        gid: state.uri.queryParameters['gid'],
        kid: state.uri.queryParameters['kid'],
        $extra: state.extra as Schedule?,
      );

  ScheduleDetailRouteData get _self => this as ScheduleDetailRouteData;

  @override
  String get location => GoRouteData.$location(
    '/schedules/detauil',
    queryParams: {
      if (_self.gid != null) 'gid': _self.gid,
      if (_self.kid != null) 'kid': _self.kid,
    },
  );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

RouteBase get $scheduleAddRoute => GoRouteData.$route(
  path: '/schedule/add',
  name: '/schedule/add',

  factory: _$ScheduleAddRoute._fromState,
);

mixin _$ScheduleAddRoute on GoRouteData {
  static ScheduleAddRoute _fromState(GoRouterState state) =>
      const ScheduleAddRoute();

  @override
  String get location => GoRouteData.$location('/schedule/add');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRouteData => GoRouteData.$route(
  path: '/sing-in',
  name: '/sing-in',

  factory: _$SignInRouteData._fromState,
);

mixin _$SignInRouteData on GoRouteData {
  static SignInRouteData _fromState(GoRouterState state) =>
      const SignInRouteData();

  @override
  String get location => GoRouteData.$location('/sing-in');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpSendRouteData => GoRouteData.$route(
  path: '/sign-up/send',
  name: '/sign-up/send',

  factory: _$SignUpSendRouteData._fromState,
);

mixin _$SignUpSendRouteData on GoRouteData {
  static SignUpSendRouteData _fromState(GoRouterState state) =>
      const SignUpSendRouteData();

  @override
  String get location => GoRouteData.$location('/sign-up/send');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpVerifyRouteData => GoRouteData.$route(
  path: '/sign-up/verify',
  name: '/sign-up/verify',

  factory: _$SignUpVerifyRouteData._fromState,
);

mixin _$SignUpVerifyRouteData on GoRouteData {
  static SignUpVerifyRouteData _fromState(GoRouterState state) =>
      SignUpVerifyRouteData(email: state.uri.queryParameters['email']!);

  SignUpVerifyRouteData get _self => this as SignUpVerifyRouteData;

  @override
  String get location => GoRouteData.$location(
    '/sign-up/verify',
    queryParams: {'email': _self.email},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $resetPasswordSendRouteData => GoRouteData.$route(
  path: '/reset-password/send',
  name: '/reset-password/send',

  factory: _$ResetPasswordSendRouteData._fromState,
);

mixin _$ResetPasswordSendRouteData on GoRouteData {
  static ResetPasswordSendRouteData _fromState(GoRouterState state) =>
      const ResetPasswordSendRouteData();

  @override
  String get location => GoRouteData.$location('/reset-password/send');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webRouterHash() => r'574d077e3559678cefd2a4942356eb7ef13cd06b';

/// See also [WebRouter].
@ProviderFor(WebRouter)
final webRouterProvider = NotifierProvider<WebRouter, GoRouter>.internal(
  WebRouter.new,
  name: r'webRouterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$webRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WebRouter = Notifier<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
