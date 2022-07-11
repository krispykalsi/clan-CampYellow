import 'package:flutter/material.dart';

class ClanBanner extends StatelessWidget {
  final String name;
  final String bannerImageUrl;
  final int totalMembers;
  final int onlineMembers;

  const ClanBanner({
    Key? key,
    required this.name,
    required this.totalMembers,
    required this.onlineMembers,
    required this.bannerImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            bannerImageUrl,
            fit: BoxFit.cover,
            frameBuilder: (context, child, _, __) {
              return Container(
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(width: 3, color: Colors.yellow),
                  ),
                ),
                child: child,
              );
            },
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.black54,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Clan name: $name",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Divider(height: 8),
                Text(
                  "$totalMembers members, $onlineMembers online",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
