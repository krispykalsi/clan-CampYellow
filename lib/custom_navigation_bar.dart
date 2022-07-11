import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 60,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(Icons.star),
          label: "Achievements",
        ),
        NavigationDestination(
          icon: Icon(Icons.leaderboard),
          label: "Leaderboard",
        ),
        NavigationDestination(
          icon: Icon(Icons.group),
          label: "Discussions",
        ),
        NavigationDestination(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
        ),
      ],
    );
  }
}
