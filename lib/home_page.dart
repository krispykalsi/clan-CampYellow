import 'package:clan/achievement_section.dart';
import 'package:clan/league.dart';
import 'package:clan/past_performances_section.dart';
import 'package:clan/performance.dart';
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
            sectionSeparator,
            PastPerformancesSection(
              performances: [
                Performance(
                    "https://www.cosmopolitanme.com/cloud/2021/09/08/GIRLGAMER.jpg",
                    "Priya in International Debating League"),
                Performance(
                    "https://imageio.forbes.com/specials-images/imageserve/6041579d3f27a0cd194da4d4/0x0.jpg?format=jpg&width=1200",
                    "Akshay in Global Quizzing Finals"),
                Performance(
                    "https://hard-drive.net/wp-content/uploads/2021/02/New-Project-29.png",
                    "Gamer guy lol")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
