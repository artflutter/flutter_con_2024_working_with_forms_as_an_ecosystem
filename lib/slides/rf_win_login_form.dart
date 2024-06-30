import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_win_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgWinLoginForm extends FlutterDeckSlideWidget {
  const RfgWinLoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_win_login_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Win login form with `fluent_ui`',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const RfWinLoginFormWidget(),
    );
  }
}
