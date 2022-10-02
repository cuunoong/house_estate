import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home), label: 'Discover'),
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart), label: 'Favorites'),
        BottomNavigationBarItem(icon: Icon(FeatherIcons.tv), label: 'TV News'),
        BottomNavigationBarItem(
            icon: Icon(FeatherIcons.settings), label: 'Settings'),
      ],
      currentIndex: 0,
      selectedItemColor: const Color(0xFFF7AF4B),
    );
  }
}
