import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_material_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgMaterialLoginForm extends FlutterDeckSlideWidget {
  const RfgMaterialLoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_material_login_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Material login form',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const RfMaterialLoginFormWidget(),
    );
  }
}
