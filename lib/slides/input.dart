import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Input extends FlutterDeckSlideWidget {
  const Input()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/input',
            header: FlutterDeckHeaderConfiguration(
              title: 'Input',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'reactive_forms_widgets',
      subtitle:
          "a wide range of widgets from `pub.dev` ready for user with `reactive_forms`",
      theme: FlutterDeckTheme.of(context).copyWith(
        bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
          titleTextStyle: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}

class InputList extends FlutterDeckSlideWidget {
  const InputList()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/input_list',
            header: FlutterDeckHeaderConfiguration(
              title: 'Input list',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Image.asset(
            'assets/inputs.png',
            isAntiAlias: true,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
