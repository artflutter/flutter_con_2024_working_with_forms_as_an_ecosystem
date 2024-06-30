import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLink extends FlutterDeckSlideWidget {
  const BrickLink()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink',
            // header: FlutterDeckHeaderConfiguration(
            //   title: 'Blank slide template',
            // ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Image.asset(
        'assets/bricklink.png',
        isAntiAlias: true,
        filterQuality: FilterQuality.high,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
