import 'package:auto_route/auto_route.dart';
import 'package:yourself/app/Navigation/add_page.dart';
import 'package:yourself/app/Navigation/dashboard_page.dart';
import 'package:yourself/app/Navigation/home_page.dart';
import 'package:yourself/app/Navigation/nav_bar_page.dart';
import 'package:yourself/app/Navigation/navigation_page.dart';
import 'package:yourself/app/Navigation/notification_page.dart';
import 'package:yourself/app/Navigation/profile_page.dart';
import 'package:yourself/app/pages/book_page.dart';
import 'package:yourself/app/pages/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: NavbarPage,
    ),
    AutoRoute(
      page: BookPage,
    ),
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: NavigationPage,
      path: 'Navigation',
      children: [
        AutoRoute(
          name: 'homeRouter',
          path: '',
          page: HomePage,
        ),
        AutoRoute(
            name: 'DashbaordRouter', path: 'Dashboard', page: DashboardPage),
        AutoRoute(name: 'AddRouter', path: 'Add', page: AddPage),
        AutoRoute(
            name: 'NotificationRouter',
            path: 'Notification',
            page: NotificationPage),
        AutoRoute(name: 'profileRouter', path: 'profile', page: ProfilePage),
      ],
    ),
  ],
)
class $AppRouter {}