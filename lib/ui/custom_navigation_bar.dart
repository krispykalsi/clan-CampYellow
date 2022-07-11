import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final ImageProvider? profileImage;

  const CustomNavigationBar({Key? key, this.profileImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.transparent,
        iconTheme: MaterialStateProperty.all(const IconThemeData(size: 40)),
      ),
      child: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const NavigationDestination(
            icon: Icon(Icons.star),
            label: "Achievements",
          ),
          const NavigationDestination(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard",
          ),
          const NavigationDestination(
            icon: Icon(Icons.group),
            label: "Discussions",
          ),
          NavigationDestination(
            icon: profileImage == null
                ? const Icon(Icons.person)
                : CircleAvatar(backgroundImage: profileImage),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
