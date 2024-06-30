import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginSample extends StatelessWidget {
  const LoginSample({super.key});

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: ReactiveFormBuilder(
          form: buildForm,
          builder: (context, form, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    border: OutlineInputBorder(),
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
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ReactiveCheckboxListTile(
                    formControlName: 'stay',
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
                      if (form.valid) {
                        print(form.value);
                      } else {
                        form.markAllAsTouched();
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
                  child: const Text(
                    'Forgot Password',
                  ),
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
