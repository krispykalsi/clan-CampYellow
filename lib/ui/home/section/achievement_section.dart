import 'package:clan/common/int_extensions.dart';
import 'package:clan/model/league.dart';
import 'package:flutter/material.dart';

class AchievementSection extends StatelessWidget {
  final League currentLeague;
  final int leagueRank;
  final int xp;
  final int wins;

  final rowHeight = 60.0;

  const AchievementSection({
    Key? key,
    required this.currentLeague,
    required this.leagueRank,
    required this.xp,
    required this.wins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Achievements",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Divider(thickness: 5, color: Colors.transparent),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildItemHeading(context, "Current League"),
                _buildItemHeading(context, "League Ranking"),
                _buildItemHeading(context, "Experience"),
                _buildItemHeading(context, "# of wins"),
              ],
            ),
            const VerticalDivider(width: 30, color: Colors.transparent),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildItem(Image(
                  image: currentLeague.assetImage,
                  fit: BoxFit.fill,
                )),
                _buildItem(Text(
                  leagueRank.withOrdinal,
                  style: Theme.of(context).textTheme.displayLarge,
                )),
                _buildItem(Text(
                  "$xp xp",
                  style: Theme.of(context).textTheme.displayMedium,
                )),
                _buildItem(Text(
                  "$wins",
                  style: Theme.of(context).textTheme.displayMedium,
                )),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildItemHeading(BuildContext context, String title) {
    return SizedBox(
      height: rowHeight,
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }

  Widget _buildItem(Widget item) {
    return SizedBox(
      height: rowHeight,
      child: Center(child: item),
    );
  }
}
