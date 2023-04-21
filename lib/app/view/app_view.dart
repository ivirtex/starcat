// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      material: (context) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onItemTapped,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.explore_rounded),
                label: 'Explore',
              ),
              NavigationDestination(
                icon: Icon(Icons.calendar_today_rounded),
                label: 'Launches',
              ),
              NavigationDestination(
                icon: Icon(Icons.article_rounded),
                label: 'News',
              ),
            ],
          ),
          body: SafeArea(
            top: false,
            child: IndexedStack(
              index: _selectedIndex,
              children: const [
                ExplorePage(),
                LaunchesPage(),
                NewsPage(),
              ],
            ),
          ),
        );
      },
      cupertino: (context) {
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.compass),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.calendar),
                label: 'Launches',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.news),
                label: 'News',
              ),
            ],
          ),
          tabBuilder: (context, index) {
            return IndexedStack(
              index: index,
              children: const [
                ExplorePage(),
                LaunchesPage(),
                NewsPage(),
              ],
            );
          },
        );
      },
    );
  }
}
