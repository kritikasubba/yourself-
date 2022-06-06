import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yourself/app/Navigation/home_page.dart';
import 'package:yourself/app/routes/router.gr.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      routes: const [
        HomeRouter(),
        DashbaordRouter(),
        AddRouter(),
        NotificationRouter(),
        ProfileRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              label: 'Home',
              icon: _NavigationIcons(
                iconName: Icons.home_outlined,
                tabsRouter: tabsRouter,
                index: 0,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor,
              icon: _NavigationIcons(
                iconName: Icons.home_outlined,
                tabsRouter: tabsRouter,
                index: 1,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor,
              icon: _NavigationIcons(
                iconName: Icons.home_outlined,
                tabsRouter: tabsRouter,
                index: 2,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor,
              icon: _NavigationIcons(
                iconName: Icons.home_outlined,
                tabsRouter: tabsRouter,
                index: 3,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor,
              icon: _NavigationIcons(
                iconName: Icons.home_outlined,
                tabsRouter: tabsRouter,
                index: 4,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _NavigationIcons extends StatelessWidget {
  final TabsRouter tabsRouter;

  ///icons from local assets
  IconData iconName;
  final int index;

  _NavigationIcons({
    Key? key,
    required this.tabsRouter,
    required this.iconName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Icon(
          iconName,
          color: tabsRouter.activeIndex == index ? Colors.white : Colors.grey,
        ));
  }
}
