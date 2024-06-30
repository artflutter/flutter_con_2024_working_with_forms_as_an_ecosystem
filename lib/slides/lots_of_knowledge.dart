import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LotsOfKnowledge extends FlutterDeckSlideWidget {
  const LotsOfKnowledge()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/lots_of_knowledge',
            header: FlutterDeckHeaderConfiguration(
              title: 'Agenda',
            ),
            steps: 3,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'Fun facts about the world world around us',
            'Powerful tool in your toolset',
            'Discover new opportunities',
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset(
          'assets/lots_of_knowledge.png',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
