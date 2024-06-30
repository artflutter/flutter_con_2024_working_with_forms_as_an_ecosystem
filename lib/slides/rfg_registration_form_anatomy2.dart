import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_register_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgRegistrationFormAnatomy2 extends FlutterDeckSlideWidget {
  const RfgRegistrationFormAnatomy2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_registration_form_anatomy2',
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
class _RegistrationFormWidgetState extends State<RegisterFormWidget> {
  @override
  Widget build(BuildContext context) {
    return RegisterFormBuilder(
      model: const Register(),
      builder: (context, formModel, child) {
        return Column(
          children: [
            ReactiveTextField<String>(
              formControl: formModel.emailControl
            ),
            ReactiveFormControlStatusBuilder(
              formControl: formModel.usernameControl,
              builder: (_, control) {
                return ReactiveTextField<String>(
                  formControl: formModel.usernameControl,
                  decoration: InputDecoration(
                    suffixIcon: control.status == ControlStatus.pending
                        ? const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CircularProgressIndicator(),
                          )
                        : null,
                  ),
                );
              },
            ),
            ReactiveFancyPasswordField<String>(
              formControl: formModel.passwordControl,
            ),
            ReactiveDateTimePicker(
              formControl: formModel.dobControl
            ),
            ReactiveDropdownMenu<String, String>(
              formControl: formModel.locationControl,
            ),
            ReactiveFormControlValueConsumer(
              formControl: formModel.locationControl,
              listener: (context, control) {
                formModel.stateControl?.value = null;
              },
              builder: (context, control) {
                return ReactiveDropdownMenu<String, String?>(
                  formControl: formModel.stateControl,
                  dropdownMenuEntries: (control.value == 'USA'
                          ? [null, "Alabama", "Alaska", "Arizona"]
                          : [null, "Quebec", "Ontario"])
                      .map<DropdownMenuEntry<String?>>(
                        (color) => DropdownMenuEntry<String?>(
                          value: color,
                          label: color ?? 'Please select',
                        ),
                      )
                      .toList(),
                );
              },
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
      rightBuilder: (context) => const RegisterFormWidget(),
    );
  }
}
