import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CheckboxFormField extends FlutterDeckSlideWidget {
  const CheckboxFormField()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/checkbox_form_field',
            title: 'Checkbox form field',
            header: FlutterDeckHeaderConfiguration(
              title: 'Checkbox form field',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('CheckboxFormFieldLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {Widget? title,
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => Text(
                          state.errorText ?? "",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) {
        return const SingleChildScrollView(
          key: PageStorageKey('CheckboxFormFieldRight'),
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
          FormField<bool>(
            builder: (state) {
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checkboxValue,
                        onChanged: (value) {
                          setState(() { checkboxValue = value; });
                        }),
                      Text('I accept terms'),
                    ],
                  ),
                  Text(
                    state.errorText ?? '',
                    style: TextStyle(color: Theme.of(context).errorColor),
                  )
                ],
              );
            },
              if (!checkboxValue) {
                return 'You need to accept terms';
              } else {
                return null;
              }
            },
          ),
          ''',
          ),
        );
      },
    );
  }
}
