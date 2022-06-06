import 'package:flutter/material.dart';
import 'package:yourself/app/Navigation/add_page.dart';
import 'package:yourself/app/Navigation/dashboard_page.dart';
import 'package:yourself/app/Navigation/home_page.dart';
import 'package:yourself/app/Navigation/notification_page.dart';
import 'package:yourself/app/Navigation/profile_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int currentTab = 0;
  final List<Widget> screens = const [
    HomePage(),
    DashboardPage(),
    AddPage(),
    NotificationPage(),
    ProfilePage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: FloatingActionButton(
          child: Icon(
            Icons.add_outlined,
          ),
          backgroundColor: const Color(0xff5B8C5A),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                          color: currentTab == 0
                              ? const Color(0xff5B8C5A)
                              : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashboardPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.storefront,
                          size: 30,
                          color: currentTab == 1
                              ? const Color(0xff5B8C5A)
                              : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const NotificationPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: currentTab == 2
                              ? const Color(0xff5B8C5A)
                              : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ProfilePage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outlined,
                          size: 30,
                          color: currentTab == 3
                              ? const Color(0xff5B8C5A)
                              : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
