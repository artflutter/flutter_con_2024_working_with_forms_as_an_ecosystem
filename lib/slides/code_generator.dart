import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodeGenerator extends FlutterDeckSlideWidget {
  const CodeGenerator()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code_generator',
            header: FlutterDeckHeaderConfiguration(
              title: 'Code generator',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'reactive_forms_generator',
      subtitle:
          "code generator for `reactive_forms` which will save you \n a lot of time and make your forms type safe.",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
