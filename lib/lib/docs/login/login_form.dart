import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/annotateless/labels.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login/login.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login/mocks.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class LoginFormWidget extends StatefulWidget {
  final ValueChanged<Login>? onChange;

  const LoginFormWidget({super.key, this.onChange});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  Login _emptyModel = mockedLoginEmpty;

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: LoginFormBuilder(
        canPop: (formGroup) => true,
        onPopInvoked: (formGroup, didPop) => {},
        model: _emptyModel,
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                key: email.itemKey,
                formControl: formModel.emailControl,
                validationMessages: {
                  ValidationMessage.required: (_) => errorRequired
                },
                decoration: InputDecoration(
                  labelText: email.name,
                  helperText: '',
                  helperStyle: const TextStyle(height: 0.8),
                  errorStyle: const TextStyle(height: 0.8),
                ),
              ),
              const SizedBox(height: 8.0),
              ReactiveTextField<String>(
                key: password.itemKey,
                formControl: formModel.passwordControl,
                obscureText: true,
                validationMessages: {
                  ValidationMessage.required: (_) => errorRequired,
                  'mustMatch': (_) => errorMustMatch,
                },
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: password.name,
                  helperText: '',
                  helperStyle: const TextStyle(height: 0.8),
                  errorStyle: const TextStyle(height: 0.8),
                ),
              ),
              // ReactiveLoginFormConsumer(
              //   builder: (context, formModel, child) {
              //     // debugPrint(formModel.passwordControl.errors);
              //     // debugPrint(formModel.form);
              //     debugPrint('dirty => ${formModel.form.dirty}');
              //     debugPrint(
              //         'passwordDirty => ${formModel.passwordControl.dirty}');
              //
              //     return Column(
              //       children: [
              //         Text(formModel.emailControl.errors.toString()),
              //         Text(formModel.passwordControl.errors.toString()),
              //       ],
              //     );
              //   },
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: submitRaw.itemKey,
                          onPressed: () {
                            formModel.submit(onValid: (_) {});
                            final model = formModel.model;

                            formModel.form.markAllAsTouched();
                            widget.onChange?.call(model);

                            debugPrint(model.email);
                            debugPrint(model.password);
                          },
                          child: const Text('Submit raw'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ReactiveLoginFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              key: submit.itemKey,
                              onPressed: formModel.form.valid
                                  ? () {
                                debugPrint((formModel).model.toString());
                                debugPrint(formModel.model.email);
                                debugPrint(formModel.model.password);
                                widget.onChange?.call(formModel.model);
                              }
                                  : null,
                              child: const Text('Submit'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: submitRaw.itemKey,
                          onPressed: () =>
                              formModel.submit(
                                onValid: (_) => debugPrint('FormValid'),
                                onNotValid: () {
                                  debugPrint('FormInvalid');
                                },
                              ),
                          child: const Text('Submit method'),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: updateModel.itemKey,
                          onPressed: () {
                            setState(() => _emptyModel = mockedLogin);
                          },
                          child: const Text('Update model'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          key: reset.itemKey,
                          onPressed: () => formModel.reset(),
                          child: const Text('Reset'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () =>
                              formModel.emailControl.markAsDisabled(),
                          child: const Text('Disable Email'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => formModel.toggleDisabled(),
                          child: const Text('Toggle Disabled'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
