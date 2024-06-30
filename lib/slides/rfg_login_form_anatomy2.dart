import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgLoginFormAnatomy2 extends FlutterDeckSlideWidget {
  const RfgLoginFormAnatomy2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_login_form_anatomy2',
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
class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return LoginFormBuilder(
      builder: (context, formModel, child) {
        return Column(
          children: [
            ReactiveTextField<String>(
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) =>
                    'The email must not be empty',
                ValidationMessage.email: (_) =>
                    'The email value must be a valid email',
              },
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            ReactiveTextField<String>(
              formControl: formModel.passwordControl,
              validationMessages: {
                ValidationMessage.required: (_) =>
                    'The password must not be empty',
                ValidationMessage.minLength: (_) =>
                    'The password must be at least 8 characters',
              },
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            ReactiveCheckboxListTile(
              formControl: formModel.stayControl,
              title: const Text('Stay logged in'),
            ),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {
                if (formModel.form.valid) {
                  print(formModel.model);

                  /// Login get model { ... }
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
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const LoginFormWidget(),
    );
  }
}
