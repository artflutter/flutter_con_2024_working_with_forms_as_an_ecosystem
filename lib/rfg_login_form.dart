import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/login.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: LoginFormBuilder(
          model: const Login(),
          builder: (context, formModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReactiveTextField<String>(
                  formControl: formModel.emailControl,
                  validationMessages: {
                    ValidationMessage.required: (_) =>
                        'The email must not be empty',
                    ValidationMessage.email: (_) =>
                        'The email value must be a valid email',
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8.0),
                ReactiveTextField<String>(
                  formControl: formModel.passwordControl,
                  obscureText: true,
                  validationMessages: {
                    ValidationMessage.required: (_) =>
                        'The password must not be empty',
                    ValidationMessage.minLength: (_) =>
                        'The password must be at least 8 characters',
                  },
                  style: const TextStyle(color: Colors.black),
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControl: formModel.stayControl,
                    title: const Text(
                      'Stay logged in',
                      style: TextStyle(color: Colors.black),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: FilledButton(
                    onPressed: () {
                      if (formModel.form.valid) {
                        print(formModel.model);
                      } else {
                        formModel.form.markAllAsTouched();
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Forgot Password'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'New User? Create Account',
                  style: TextStyle(color: Colors.black),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
