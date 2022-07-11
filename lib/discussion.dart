import 'package:flutter/material.dart';

class Discussion {
  final String threadName;
  final int unreadMessages;
  final bool isLive;

  const Discussion({
    Key? key,
    required this.threadName,
    required this.unreadMessages,
    required this.isLive,
  });
}
