import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_cupertino_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgCUpertinoLoginForm extends FlutterDeckSlideWidget {
  const RfgCUpertinoLoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_cupertino_login_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Cupertino login form',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const RfCupertinoLoginFormWidget(),
    );
  }
}
