import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QrLinkedin extends FlutterDeckSlideWidget {
  const QrLinkedin()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/QrLinkedin',
            header: FlutterDeckHeaderConfiguration(
              title: 'LinkedIn',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/qr_linkedin.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
