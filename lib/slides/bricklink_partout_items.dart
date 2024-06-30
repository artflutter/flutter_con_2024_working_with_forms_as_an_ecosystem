import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLinkPartoutItems extends FlutterDeckSlideWidget {
  const BrickLinkPartoutItems()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink_partout_items',
            header: FlutterDeckHeaderConfiguration(
              title: 'BrickLink partout items',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => SizedBox(
        width: double.infinity,
        child: Image.asset(
          'assets/bricklink_partout_items.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
