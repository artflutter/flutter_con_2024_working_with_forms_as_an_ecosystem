import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RfMaterialLoginFormWidget extends StatelessWidget {
  const RfMaterialLoginFormWidget({super.key});

  FormGroup buildForm() => fb.group(<String, Object>{
        'email': FormControl<String>(),
        'password': FormControl<String>(),
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Transform.scale(
        scale: 2,
        child: ReactiveFormBuilder(
          form: buildForm,
          builder: (context, form, child) {
            return Center(
              child: SizedBox(
                width: 358,
                height: 245,
                child: Card(
                  elevation: 4,
                  clipBehavior: Clip.antiAlias,
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        ReactiveTextField<String>(
                          formControlName: 'email',
                          style: const TextStyle(color: Colors.black),
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                'The email must not be empty',
                            ValidationMessage.email: (_) =>
                                'The email value must be a valid email',
                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            // border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        ReactiveTextField<String>(
                          formControlName: 'password',
                          style: const TextStyle(color: Colors.black),
                          obscureText: true,
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                'The password must not be empty',
                            ValidationMessage.minLength: (_) =>
                                'The password must be at least 8 characters',
                          },
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            // border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 16),
                        FilledButton(
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
    );
  }
}
