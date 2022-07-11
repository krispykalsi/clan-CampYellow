import 'package:flutter/painting.dart';

enum League {
  gold(AssetImage("assets/gold_shield.png")),
  silver(AssetImage("assets/silver_shield.png")),
  bronze(AssetImage("assets/bronze_shield.png"));

  const League(this.assetImage);

  final AssetImage assetImage;
}
