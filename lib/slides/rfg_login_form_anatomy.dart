import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgLoginFormAnatomy extends FlutterDeckSlideWidget {
  const RfgLoginFormAnatomy()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_login_form_anatomy',
            header: FlutterDeckHeaderConfiguration(
              title: 'Reactive Forms anatomy',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 4,
        right: 2,
      ),
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfLoginFormAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
class Login {
  final String email;
  final String password;
  final bool stay;

  const Login({
    @RfControl(validators: [RequiredValidator(), EmailValidator()]) 
    this.email = '',
    @RfControl(validators: [RequiredValidator()]) 
    this.password = '',
    this.stay = false,
  });
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const LoginFormWidget(),
    );
  }
}
