import 'package:clan/custom_list_section.dart';
import 'package:flutter/material.dart';

import 'clan_member.dart';

class MemberSection extends StatelessWidget {
  final List<ClanMember> members;

  const MemberSection({Key? key, required this.members}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListSection(
      itemCount: members.length,
      sectionHeading: "Clan members",
      maxItemsAtOnce: 10,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(0),
          horizontalTitleGap: 16,
          minLeadingWidth: 0,
          leading: CircleAvatar(
              backgroundImage: NetworkImage(members[index].imageUrl)),
          title: Text(
            "${members[index].name} - ${members[index].designation}",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      },
    );
  }
}
