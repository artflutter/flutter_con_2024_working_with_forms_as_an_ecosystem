import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QrRfg extends FlutterDeckSlideWidget {
  const QrRfg()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/QrRfg',
            header: FlutterDeckHeaderConfiguration(
              title: 'reactive_forms_generator',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Image.asset(
          'assets/qr_rfg.png',
          isAntiAlias: true,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
