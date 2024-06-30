import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_macos_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgMacosLoginForm extends FlutterDeckSlideWidget {
  const RfgMacosLoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_macos_login_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'MacOS login form with `macos_ui`',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const RfMacosLoginFormWidget(),
    );
  }
}
