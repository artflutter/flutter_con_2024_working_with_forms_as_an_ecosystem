import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLinkInventory extends FlutterDeckSlideWidget {
  const BrickLinkInventory()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink_inventory',
            header: FlutterDeckHeaderConfiguration(
              title: 'BrickLink inventory',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/bricklink_inventory.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
