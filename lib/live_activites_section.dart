import 'package:flutter/material.dart';

import 'custom_list_section.dart';
import 'live_activity.dart';

class LiveActivitiesSection extends StatelessWidget {
  final List<LiveActivity> liveClanActivites;

  const LiveActivitiesSection({Key? key, required this.liveClanActivites})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListSection(
      sectionHeading: "Live clan activities on platform",
      itemCount: 2,
      onSeeMorePressed: () => debugPrint("Load more live activitties"),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.network(
            liveClanActivites[index].imageUrl,
            fit: BoxFit.fitWidth,
          ),
        );
      },
    );
  }
}
