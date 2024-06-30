import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/main.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Examples extends FlutterDeckSlideWidget {
  const Examples()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/examples',
            header: FlutterDeckHeaderConfiguration(
              title: 'Examples',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Center(
        child: SizedBox(
          width: 450,
          height: 600,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: MyApp(),
          ),
        ),
      ),
    );
  }
}
