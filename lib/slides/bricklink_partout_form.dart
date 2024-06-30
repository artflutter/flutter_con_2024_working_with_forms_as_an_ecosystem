import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BrickLinkPartoutForm extends FlutterDeckSlideWidget {
  const BrickLinkPartoutForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bricklink_partout_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'BrickLink partout form',
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
