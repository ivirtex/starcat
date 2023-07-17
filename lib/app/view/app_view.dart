// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:starcat/explore/explore.dart';
import 'package:starcat/launches/launches.dart';
import 'package:starcat/news/news.dart';
import 'package:starcat/shared/shared.dart';

class AppView extends StatelessWidget {
  const AppView({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      material: (context) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
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
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (int idx) => _onItemTapped(idx, context),
          ),
          body: navigationShell,
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

  void _onItemTapped(int index, BuildContext context) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
