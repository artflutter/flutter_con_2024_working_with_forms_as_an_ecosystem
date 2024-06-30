import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Ecosystems extends FlutterDeckSlideWidget {
  const Ecosystems()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ecosystems',
            title: 'What do we need for ecosystem?',
            header: FlutterDeckHeaderConfiguration(
              title: 'What do we need for ecosystem?',
            ),
            steps: 5,
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
          'Strong foundation',
          'Demand',
          'Form engine',
          'Inputs',
          'Code generator',
        ],
      ),
      rightBuilder: (context) {
        return const SizedBox.shrink();
      },
    );
  }
}
