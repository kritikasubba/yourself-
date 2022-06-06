// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../Navigation/add_page.dart' as _i5;
import '../Navigation/dashboard_page.dart' as _i4;
import '../Navigation/home_page.dart' as _i3;
import '../Navigation/navigation_page.dart' as _i2;
import '../Navigation/notification_page.dart' as _i6;
import '../Navigation/profile_page.dart' as _i7;
import '../pages/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    NavigationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NavigationPage());
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    DashbaordRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DashboardPage());
    },
    AddRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AddPage());
    },
    NotificationRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NotificationPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: 'Navigation', fullMatch: true),
        _i8.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i8.RouteConfig(NavigationRoute.name, path: 'Navigation', children: [
          _i8.RouteConfig(HomeRouter.name,
              path: '', parent: NavigationRoute.name),
          _i8.RouteConfig(DashbaordRouter.name,
              path: 'Dashboard', parent: NavigationRoute.name),
          _i8.RouteConfig(AddRouter.name,
              path: 'Add', parent: NavigationRoute.name),
          _i8.RouteConfig(NotificationRouter.name,
              path: 'Notification', parent: NavigationRoute.name),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: NavigationRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.NavigationPage]
class NavigationRoute extends _i8.PageRouteInfo<void> {
  const NavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(NavigationRoute.name,
            path: 'Navigation', initialChildren: children);

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.DashboardPage]
class DashbaordRouter extends _i8.PageRouteInfo<void> {
  const DashbaordRouter() : super(DashbaordRouter.name, path: 'Dashboard');

  static const String name = 'DashbaordRouter';
}

/// generated route for
/// [_i5.AddPage]
class AddRouter extends _i8.PageRouteInfo<void> {
  const AddRouter() : super(AddRouter.name, path: 'Add');

  static const String name = 'AddRouter';
}

/// generated route for
/// [_i6.NotificationPage]
class NotificationRouter extends _i8.PageRouteInfo<void> {
  const NotificationRouter()
      : super(NotificationRouter.name, path: 'Notification');

  static const String name = 'NotificationRouter';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
