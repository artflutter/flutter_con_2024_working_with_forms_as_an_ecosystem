import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_register_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgRegistrationAsyncValidator extends FlutterDeckSlideWidget {
  const RfgRegistrationAsyncValidator()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_registration_async_validator',
            header: FlutterDeckHeaderConfiguration(
              title: 'Registration async validator',
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
        key: PageStorageKey('RfgRegistrationAsyncValidatorLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
class UniqueUserNameAsyncValidator extends AsyncValidator<dynamic> {
  const UniqueUserNameAsyncValidator();

  @override
  Future<Map<String, dynamic>?> validate(
    AbstractControl<dynamic> control,
  ) async {
    final error = {'unique': false};

    final isUnique = await _isUnique(control.value);
    if (!isUnique) {
      control.markAsTouched();
      return error;
    }

    return null;
  }

  Future<bool> _isUnique(String username) {
    final storedEmails = ['1', '2'];

    return Future.delayed(
      const Duration(seconds: 1),
      () => !storedEmails.contains(username),
    );
  }
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const RegisterFormWidget(),
    );
  }
}
