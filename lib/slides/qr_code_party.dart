import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QrCodeParty extends FlutterDeckSlideWidget {
  const QrCodeParty()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/qr_code_party',
            // header: FlutterDeckHeaderConfiguration(
            // title: 'QR code party',
            // ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'QR code party',
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
