import 'package:clan/model/clan_member.dart';
import 'package:clan/model/discussion.dart';
import 'package:clan/model/league.dart';
import 'package:clan/model/live_activity.dart';
import 'package:clan/model/performance.dart';
import 'package:flutter/material.dart';

import 'section/clan_banner.dart';
import 'section/achievement_section.dart';
import 'section/discussion_section.dart';
import 'section/live_activites_section.dart';
import 'section/member_section.dart';
import 'section/past_performances_section.dart';

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
            sectionSeparator,
            LiveActivitiesSection(
              liveClanActivites: [
                LiveActivity(
                    "https://img.freepik.com/premium-vector/editable-text-effect-treasure-hunt-game-style_156037-149.jpg?w=2000"),
                LiveActivity(
                    "https://i.ytimg.com/vi/q1nE7A_pDwQ/maxresdefault.jpg"),
              ],
            ),
            sectionSeparator,
            DiscussionSection(
              discussions: [
                Discussion(
                    threadName: "General thread",
                    unreadMessages: 15,
                    isLive: false),
                Discussion(
                    threadName: "Anyone enthu for trading league...",
                    unreadMessages: 10,
                    isLive: true),
                Discussion(
                    threadName: "Anyone enthu for trading league...",
                    unreadMessages: 10,
                    isLive: true),
                Discussion(
                    threadName: "Anyone enthu for trading league...",
                    unreadMessages: 10,
                    isLive: true),
              ],
            ),
            sectionSeparator,
            MemberSection(
              members: [
                ClanMember(
                    imageUrl:
                        "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                    name: "Chintu",
                    designation: "Clan head"),
                ClanMember(
                    imageUrl:
                        "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                    name: "Pintu",
                    designation: "Debating Sensei")
              ],
            )
          ],
        ),
      ),
    );
  }
}
