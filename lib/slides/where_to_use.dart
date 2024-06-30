import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhereToUse extends FlutterDeckSlideWidget {
  const WhereToUse()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/where_to_use',
            title: 'Where to use?',
            header: FlutterDeckHeaderConfiguration(
              title: 'Where to use?',
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
          'when you have a checkbox in addition to email and password',
          'when you have some forms sprinkled around',
          'when your app is just built around filling the forms',
          'when you are using another form engine(without code generation)',
        ],
      ),
      rightBuilder: (context) {
        return const SizedBox.shrink();
      },
    );
  }
}
