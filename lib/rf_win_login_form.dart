import 'package:flutter/material.dart';
import 'package:reactive_fluent_ui/reactive_fluent_ui.dart' as fui;
import 'package:reactive_forms/reactive_forms.dart';

class RfWinLoginFormWidget extends StatelessWidget {
  const RfWinLoginFormWidget({super.key});

  FormGroup buildForm() => fb.group(<String, Object>{
        'email': FormControl<String>(),
        'password': FormControl<String>(),
      });

  @override
  Widget build(BuildContext context) {
    return fui.FluentApp(
      theme: fui.FluentThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Transform.scale(
          scale: 2,
          child: ReactiveFormBuilder(
            form: buildForm,
            builder: (context, form, child) {
              return Center(
                child: SizedBox(
                  width: 358,
                  height: 205,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Login',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          fui.ReactiveFluentTextFormBox<String>(
                            formControlName: 'email',
                            placeholder: 'Email',
                          ),
                          const SizedBox(height: 16.0),
                          fui.ReactiveFluentTextFormBox<String>(
                            formControlName: 'password',
                            placeholder: 'Password',
                            obscureText: true,
                          ),
                          const SizedBox(height: 16),
                          fui.FilledButton(
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
