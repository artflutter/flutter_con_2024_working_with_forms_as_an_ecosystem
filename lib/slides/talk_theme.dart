import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TalkTopic extends FlutterDeckSlideWidget {
  const TalkTopic()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/talk-topic',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Working with forms as an ecosystem',
      speakerInfoBuilder: (_) {
        return const FlutterDeckSpeakerInfoWidget(
          speakerInfo: FlutterDeckSpeakerInfo(
            name: 'Vasyl Dytsiak',
            description: 'Senior Flutter Developer, OpenSource contributor',
            socialHandle: 'https://github.com/artflutter',
            imagePath: 'assets/me.jpg',
          ),
        );
      },
    );
  }
}
