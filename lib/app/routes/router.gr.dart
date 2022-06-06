// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../Navigation/add_page.dart' as _i7;
import '../Navigation/dashboard_page.dart' as _i6;
import '../Navigation/home_page.dart' as _i5;
import '../Navigation/nav_bar_page.dart' as _i1;
import '../Navigation/navigation_page.dart' as _i4;
import '../Navigation/notification_page.dart' as _i8;
import '../Navigation/profile_page.dart' as _i9;
import '../pages/book_page.dart' as _i2;
import '../pages/splash_page.dart' as _i3;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    NavbarRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NavbarPage());
    },
    BookRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BookPage());
    },
    SplashRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SplashPage());
    },
    NavigationRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NavigationPage());
    },
    HomeRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomePage());
    },
    DashbaordRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DashboardPage());
    },
    AddRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AddPage());
    },
    NotificationRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.NotificationPage());
    },
    ProfileRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(NavbarRoute.name, path: '/navbar-page'),
        _i10.RouteConfig(BookRoute.name, path: '/book-page'),
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(NavigationRoute.name, path: 'Navigation', children: [
          _i10.RouteConfig(HomeRouter.name,
              path: '', parent: NavigationRoute.name),
          _i10.RouteConfig(DashbaordRouter.name,
              path: 'Dashboard', parent: NavigationRoute.name),
          _i10.RouteConfig(AddRouter.name,
              path: 'Add', parent: NavigationRoute.name),
          _i10.RouteConfig(NotificationRouter.name,
              path: 'Notification', parent: NavigationRoute.name),
          _i10.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: NavigationRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.NavbarPage]
class NavbarRoute extends _i10.PageRouteInfo<void> {
  const NavbarRoute() : super(NavbarRoute.name, path: '/navbar-page');

  static const String name = 'NavbarRoute';
}

/// generated route for
/// [_i2.BookPage]
class BookRoute extends _i10.PageRouteInfo<void> {
  const BookRoute() : super(BookRoute.name, path: '/book-page');

  static const String name = 'BookRoute';
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i4.NavigationPage]
class NavigationRoute extends _i10.PageRouteInfo<void> {
  const NavigationRoute({List<_i10.PageRouteInfo>? children})
      : super(NavigationRoute.name,
            path: 'Navigation', initialChildren: children);

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: '');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i6.DashboardPage]
class DashbaordRouter extends _i10.PageRouteInfo<void> {
  const DashbaordRouter() : super(DashbaordRouter.name, path: 'Dashboard');

  static const String name = 'DashbaordRouter';
}

/// generated route for
/// [_i7.AddPage]
class AddRouter extends _i10.PageRouteInfo<void> {
  const AddRouter() : super(AddRouter.name, path: 'Add');

  static const String name = 'AddRouter';
}

/// generated route for
/// [_i8.NotificationPage]
class NotificationRouter extends _i10.PageRouteInfo<void> {
  const NotificationRouter()
      : super(NotificationRouter.name, path: 'Notification');

  static const String name = 'NotificationRouter';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRouter extends _i10.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
