import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLinkStore extends FlutterDeckSlideWidget {
  const BrickLinkStore()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink_store',
            header: FlutterDeckHeaderConfiguration(
              title: 'BrickLink store',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/store_bricklink.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
