import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FormEngine extends FlutterDeckSlideWidget {
  const FormEngine()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/form_engine',
            header: FlutterDeckHeaderConfiguration(
              title: 'Form engine',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'reactive_forms',
      subtitle:
          "model-driven approach to handling Forms inputs and validations, heavily inspired in Angular's Reactive Forms\n(Authored by Joan Pablo)",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
