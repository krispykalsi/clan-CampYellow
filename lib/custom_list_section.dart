import 'package:flutter/material.dart';

class CustomListSection extends StatelessWidget {
  final String sectionHeading;
  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int maxItemsAtOnce;
  final VoidCallback? onSeeMorePressed;

  const CustomListSection({
    Key? key,
    required this.itemCount,
    required this.sectionHeading,
    required this.itemBuilder,
    this.maxItemsAtOnce = 2,
    this.onSeeMorePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionHeading,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Divider(thickness: 5, color: Colors.transparent),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < maxItemsAtOnce && i < itemCount; i++)
              itemBuilder(context, i)
          ],
        ),
        if (itemCount > maxItemsAtOnce)
          Center(
            child: TextButton(
              onPressed: onSeeMorePressed,
              child: Text(
                "See more...",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          )
      ],
    );
  }
}
