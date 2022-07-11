import 'package:flutter/material.dart';

import 'performance.dart';
import 'custom_list_section.dart';

class PastPerformancesSection extends StatelessWidget {
  final List<Performance> performances;

  const PastPerformancesSection({Key? key, required this.performances})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomListSection(
      sectionHeading: "Past featured performances",
      itemCount: performances.length,
      onSeeMorePressed: () => debugPrint("Load more performances!"),
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 16,
          horizontalTitleGap: 24,
          minLeadingWidth: 0,
          leading: Image.network(
            performances[index].imageUrl,
            width: 100,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(
            performances[index].title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      },
    );
  }
}
