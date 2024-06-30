import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SoWhat extends FlutterDeckSlideWidget {
  const SoWhat()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            title: 'So what ...',
            route: '/whats_the_issue',
            steps: 4,
            header: FlutterDeckHeaderConfiguration(
              title: 'So what ...',
            ),
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
          '... - if we have to manage state manually?',
          '... - if we have to create our own controls?',
          '... - if we have to manually handle async validation?',
          '... - if we have to manually handle arrays of entities?',
        ],
      ),
      rightBuilder: (context) {
        return const SizedBox.shrink();
      },
    );
    // return FlutterDeckSlide.bigFact(
    //   title: 'So what?',
    //   theme: FlutterDeckTheme.of(context).copyWith(
    //     bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
    //       titleTextStyle: TextStyle(color: Colors.amber),
    //     ),
    //   ),
    // );
  }
}
