import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FullOfKnowledge extends FlutterDeckSlideWidget {
  const FullOfKnowledge()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/FullOfKnowledge',
            title: 'Summarize',
            header: FlutterDeckHeaderConfiguration(
              title: 'Summarize',
            ),
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true,
        items: const [
          'New facts about world around us',
          'Powerful tool set for your project',
          'An opportunity to become a lego seller',
        ],
      ),
      rightBuilder: (context) {
        return Image.asset(
          'assets/full_of_knowledge.jpg',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
