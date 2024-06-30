import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_register_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgRegistrationFormAnatomy extends FlutterDeckSlideWidget {
  const RfgRegistrationFormAnatomy()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_registration_form_anatomy',
            header: FlutterDeckHeaderConfiguration(
              title: 'Registration form anatomy',
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
        key: PageStorageKey('RfgRegistrationFormAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
class Register {
  final String email;
  final String username;
  final String password;
  final DateTime? dob;
  final String location;
  final String? state;

  const Register({
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.email = '',
    @RfControl(
      validators: [RequiredValidator()], 
      asyncValidators: [UniqueUserNameAsyncValidator()],
      asyncValidatorsDebounceTime: 300,
    )
    this.username = '',
    @RfControl(validators: [RequiredValidator()]) 
    this.location = 'USA',
    @RfControl(validators: [RequiredValidator()]) 
    this.state,
    @RfControl(validators: [RequiredValidator()]) 
    this.password = '',
    @RfControl(validators: [RequiredValidator()]) 
    this.dob,
  });
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const RegisterFormWidget(),
    );
  }
}
