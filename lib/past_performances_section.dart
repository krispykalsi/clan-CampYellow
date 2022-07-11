import 'package:flutter/material.dart';

import 'performance.dart';

class PastPerformancesSection extends StatelessWidget {
  final List<Performance> performances;

  const PastPerformancesSection({Key? key, required this.performances})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Past featured performances",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Divider(thickness: 5, color: Colors.transparent),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final performance in performances.take(2))
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                minVerticalPadding: 16,
                horizontalTitleGap: 24,
                minLeadingWidth: 0,
                leading: Image.network(
                  performance.imageUrl,
                  width: 100,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  performance.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              )
          ],
        ),
        if (performances.length > 2)
          Center(
            child: Text(
              "See more...",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          )
      ],
    );
  }
}
