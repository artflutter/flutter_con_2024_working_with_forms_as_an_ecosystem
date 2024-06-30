import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rf_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfLoginFormAnatomy extends FlutterDeckSlideWidget {
  const RfLoginFormAnatomy()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rf_login_form_anatomy',
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
class LoginSample extends StatelessWidget {
  FormGroup buildForm() => fb.group(<String, Object>{
        'email': FormControl<String>(
          validators: [Validators.required, Validators.email],
        ),
        'password': FormControl<String>(
          validators: [Validators.required, Validators.minLength(8)],
        ),
        'stay': FormControl<bool>(value: false),
      });

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: buildForm,
      builder: (context, form, child) {
        return Column(
          children: [
            ReactiveTextField<String>(
              formControlName: 'email',
              validationMessages: {
                ValidationMessage.required: (_) =>
                    'The email must not be empty',
                ValidationMessage.email: (_) =>
                    'The email value must be a valid email',
              },
            ),
            ReactiveTextField<String>(
              formControlName: 'password',
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) =>
                    'The password must not be empty',
                ValidationMessage.minLength: (_) =>
                    'The password must be at least 8 characters',
              },
            ),
            ReactiveCheckboxListTile(
              formControlName: 'stay',
              title: const Text('Stay logged in'), 
            ),
            FilledButton(
              onPressed: () {
                if (form.valid) {
                  print(form.value);
                  /// Map<String, Object?> get value => Map.unmodifiable(_value!);
                }
              },
              child: const Text('Login'),
            ),
          ],
        );
      },
    );
  }
}
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const LoginSample(),
    );
  }
}
