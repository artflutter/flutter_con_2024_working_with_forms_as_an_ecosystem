import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhereNotToUse extends FlutterDeckSlideWidget {
  const WhereNotToUse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/where_not_to_use',
            title: 'Where not to use?',
            header: FlutterDeckHeaderConfiguration(
              title: 'Where not to use?',
            ),
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 10,
        right: 1,
      ),
      backgroundBuilder: (_) => Container(
        color: Colors.white,
      ),
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          'when you do not have forms in your project',
          'when you have just email/password form',
          'when you like to invent and explore your own way',
          'when you do not like code generators',
        ],
      ),
      rightBuilder: (context) {
        return const SizedBox.shrink();
      },
    );
  }
}
