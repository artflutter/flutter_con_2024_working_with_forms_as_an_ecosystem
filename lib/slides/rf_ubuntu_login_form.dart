import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_ubuntu_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfUbuntuLoginForm extends FlutterDeckSlideWidget {
  const RfUbuntuLoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_ubuntu_login_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Ubuntu login form with `yaru`',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const RfUbuntuLoginFormWidget(),
    );
  }
}
