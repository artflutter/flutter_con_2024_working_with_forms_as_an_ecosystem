import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QrPresentation extends FlutterDeckSlideWidget {
  const QrPresentation()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/QrPresentation',
            header: FlutterDeckHeaderConfiguration(
              title: 'Presentation',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/qr_presentation.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
