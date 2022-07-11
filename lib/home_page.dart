import 'package:flutter/material.dart';

import 'clan_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            ClanBanner(
              name: "Lorem Ipsum",
              totalMembers: 28,
              onlineMembers: 5,
              bannerImageUrl:
                  "https://img.wallpapersafari.com/desktop/1600/900/81/89/3FlBGN.jpg",
            )
          ],
        ),
      ),
    );
  }
}
