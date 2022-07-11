import 'package:clan/achievement_section.dart';
import 'package:clan/league.dart';
import 'package:flutter/material.dart';

import 'clan_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sectionSeparator = ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Divider(
        height: 50,
        thickness: 3,
        color: Colors.white,
        indent: 8,
        endIndent: 8,
      ),
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ClanBanner(
              name: "Lorem Ipsum",
              totalMembers: 28,
              onlineMembers: 5,
              bannerImageUrl:
                  "https://img.wallpapersafari.com/desktop/1600/900/81/89/3FlBGN.jpg",
            ),
            sectionSeparator,
            AchievementSection(
              currentLeague: League.gold,
              leagueRank: 11,
              xp: 2000,
              wins: 4,
            ),
          ],
        ),
      ),
    );
  }
}
