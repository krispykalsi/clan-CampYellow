import 'package:clan/custom_list_section.dart';
import 'package:flutter/material.dart';

import 'discussion.dart';

class DiscussionSection extends StatelessWidget {
  final List<Discussion> discussions;

  const DiscussionSection({Key? key, required this.discussions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListSection(
      itemCount: discussions.length,
      maxItemsAtOnce: 3,
      sectionHeading: "Clan Discussions",
      onSeeMorePressed: () => debugPrint("More discussion threads requested!"),
      itemBuilder: (context, index) {
        var threadName = "${discussions[index].threadName}:";
        if (discussions[index].isLive) {
          threadName = "(live) $threadName";
        }
        return ListTile(
          contentPadding: const EdgeInsets.all(0),
          dense: true,
          title: Text(
            threadName,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          subtitle: Text(
            "${discussions[index].unreadMessages} unread messages",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        );
      },
    );
  }
}
