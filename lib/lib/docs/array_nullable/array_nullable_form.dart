// ignore_for_file: avoid_print
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/array_nullable/array_nullable.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class ArrayNullableFormWidget extends StatefulWidget {
  const ArrayNullableFormWidget({super.key});

  @override
  State<ArrayNullableFormWidget> createState() =>
      _ArrayNullableFormWidgetState();
}

class _ArrayNullableFormWidgetState extends State<ArrayNullableFormWidget> {
  final contacts = [
    'john@email.com',
    'susan@email.com',
    'caroline@email.com',
  ];

  final fruits = [
    'apple',
    'banana',
    'orange',
  ];

  late final ArrayNullable model;

  @override
  void initState() {
    model = ArrayNullable(
      emailList: contacts,
      fruitList: fruits.map((e) => false).toList(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Array nullable'),
      body: ArrayNullableFormBuilder(
        model: model,
        builder: (context, formModel, child) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveArrayNullableFormArrayBuilder<String>(
                      formControl: formModel.emailListControl,
                      itemBuilder: (context, i, item, formModel) {
                        return ReactiveTextField<String>(
                          formControlName: i.toString(),
                          decoration: const InputDecoration(labelText: 'Email'),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final newEmail = 'other${contacts.length + 1}@email.com';
                      contacts.add(newEmail);
                      formModel.emailListControl.add(
                        FormControl<String>(value: newEmail),
                      );
                    },
                    child: const Text('add'),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ReactiveArrayNullableFormArrayBuilder<bool>(
                      formControl: formModel.fruitListControl,
                      itemBuilder: (_, i, __, ___) {
                        return ReactiveCheckboxListTile(
                          formControlName: i.toString(),
                          title: Text(fruits[i]),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final newFruit = 'otherFruit${fruits.length + 1}';
                      fruits.add(newFruit);
                      formModel.fruitListControl.add(
                        FormControl<bool>(value: false),
                      );
                    },
                    child: const Text('add'),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (formModel.form.valid) {
                    debugPrint(formModel.model.toString());
                  } else {
                    formModel.form.markAllAsTouched();
                  }
                },
                child: const Text('Sign Up'),
              ),
              ReactiveArrayNullableFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid ? () {} : null,
                    child: const Text('Submit'),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
