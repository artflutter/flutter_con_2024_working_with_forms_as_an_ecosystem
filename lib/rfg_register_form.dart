import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/register.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_dropdown_menu/reactive_dropdown_menu.dart';
import 'package:reactive_fancy_password_field/reactive_fancy_password_field.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_forms_lbc/reactive_forms_lbc.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<RegisterFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: RegisterFormBuilder(
          model: const Register(),
          builder: (context, formModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
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
                ReactiveFormControlStatusBuilder(
                  formControl: formModel.usernameControl,
                  builder: (_, control) {
                    return ReactiveTextField<String>(
                      formControl: formModel.usernameControl,
                      validationMessages: {
                        ValidationMessage.required: (_) =>
                            'The email must not be empty',
                        ValidationMessage.email: (_) =>
                            'The email value must be a valid email',
                      },
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: const OutlineInputBorder(),
                        suffixIcon: control.status == ControlStatus.pending
                            ? const Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: CircularProgressIndicator(),
                              )
                            : null,
                        suffixIconConstraints: const BoxConstraints.tightFor(
                          width: 32,
                          height: 24,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8.0),
                ReactiveFancyPasswordField<String>(
                  formControl: formModel.passwordControl,
                  validationMessages: {
                    ValidationMessage.required: (_) =>
                        'The password must not be empty',
                    ValidationMessage.minLength: (_) =>
                        'The password must be at least 8 characters',
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8.0),
                ReactiveDateTimePicker(
                  formControl: formModel.dobControl,
                  validationMessages: {
                    ValidationMessage.required: (_) => 'Must not be empty',
                  },
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Date of birth',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ReactiveDropdownMenu<String, String>(
                  formControl: formModel.locationControl,
                  expandedInsets: EdgeInsets.zero,
                  label: const Text('Location'),
                  focusNode: FocusNode(canRequestFocus: false),
                  enableFilter: false,
                  enableSearch: false,
                  requestFocusOnTap: false,
                  textStyle: const TextStyle(color: Colors.black),
                  dropdownMenuEntries:
                      ["USA", "Canada"].map<DropdownMenuEntry<String>>((color) {
                    return DropdownMenuEntry<String>(
                      value: color,
                      label: color,
                    );
                  }).toList(),
                ),
                const SizedBox(height: 8),
                ReactiveFormControlValueConsumer(
                  formControl: formModel.locationControl,
                  listener:
                      (BuildContext context, AbstractControl<String> control) {
                    formModel.stateControl?.value = null;
                  },
                  builder:
                      (BuildContext context, AbstractControl<String> control) {
                    return ReactiveDropdownMenu<String, String?>(
                      formControl: formModel.stateControl,
                      expandedInsets: EdgeInsets.zero,
                      label: const Text('State'),
                      focusNode: FocusNode(canRequestFocus: false),
                      enableFilter: false,
                      enableSearch: false,
                      requestFocusOnTap: false,
                      textStyle: const TextStyle(color: Colors.black),
                      dropdownMenuEntries: (control.value == 'USA'
                              ? [null, "Alabama", "Alaska", "Arizona"]
                              : [null, "Quebec", "Ontario"])
                          .map<DropdownMenuEntry<String?>>((color) {
                        return DropdownMenuEntry<String?>(
                          value: color,
                          label: color ?? 'Please select',
                        );
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(height: 8),
                Center(
                  child: SizedBox(
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
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class UniqueUserNameAsyncValidator extends AsyncValidator<dynamic> {
  const UniqueUserNameAsyncValidator();

  @override
  Future<Map<String, dynamic>?> validate(
    AbstractControl<dynamic> control,
  ) async {
    final error = {'unique': false};

    final isUniqueEmail = await _getIsUniqueEmail(control.value.toString());
    if (!isUniqueEmail) {
      control.markAsTouched();
      return error;
    }

    return null;
  }

  Future<bool> _getIsUniqueEmail(String username) {
    final storedEmails = ['1', '2'];

    return Future.delayed(
      const Duration(milliseconds: 500),
      () => !storedEmails.contains(username),
    );
  }
}
