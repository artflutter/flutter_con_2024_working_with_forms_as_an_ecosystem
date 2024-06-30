import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLinkPartout extends FlutterDeckSlideWidget {
  const BrickLinkPartout()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink_partout',
            header: FlutterDeckHeaderConfiguration(
              title: 'BrickLink partout',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/bricklink_partout.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
