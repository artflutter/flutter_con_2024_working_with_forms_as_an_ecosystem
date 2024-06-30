import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactive_cupertino_text_field/reactive_cupertino_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RfCupertinoLoginFormWidget extends StatelessWidget {
  const RfCupertinoLoginFormWidget({super.key});

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
                width: 350,
                height: 208,
                child: Card(
                  elevation: 4,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CupertinoListSection.insetGrouped(
                        header: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: CupertinoColors.secondaryLabel.resolveFrom(
                                context,
                              ),
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        dividerMargin: 0,
                        additionalDividerMargin: 16,
                        children: [
                          CupertinoFormRow(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              6.0,
                              6.0,
                              6.0,
                            ),
                            prefix: const SizedBox(
                              width: 75,
                              child: Text('Email'),
                            ),
                            child: ReactiveCupertinoTextField(
                              formControlName: 'email',
                              decoration: null,
                              padding: const EdgeInsets.all(10.0),
                            ),
                          ),
                          CupertinoFormRow(
                            prefix: const SizedBox(
                              width: 75,
                              child: Text('Password'),
                            ),
                            padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0,
                              6.0,
                              6.0,
                              6.0,
                            ),
                            child: ReactiveCupertinoTextField(
                              formControlName: 'password',
                              padding: const EdgeInsets.all(10.0),
                              decoration: null,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 50,
                        ),
                        minSize: 24,
                        color: CupertinoColors.activeBlue,
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
                // Card(
                //   elevation: 4,
                //   child: Padding(
                //     padding: EdgeInsets.all(16.0),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Align(
                //           alignment: Alignment.centerLeft,
                //           child: Text(
                //             'Login',
                //             textAlign: TextAlign.left,
                //             style: TextStyle(
                //               fontSize: 22,
                //               fontWeight: FontWeight.bold,
                //             ),
                //           ),
                //         ),
                //         SizedBox(height: 8),
                //         ReactiveTextField<String>(
                //           formControlName: 'email',
                //           style: TextStyle(color: Colors.black),
                //           validationMessages: {
                //             ValidationMessage.required: (_) =>
                //                 'The email must not be empty',
                //             ValidationMessage.email: (_) =>
                //                 'The email value must be a valid email',
                //           },
                //           textInputAction: TextInputAction.next,
                //           decoration: InputDecoration(
                //             labelText: 'Email',
                //             // border: OutlineInputBorder(),
                //           ),
                //         ),
                //         SizedBox(height: 16.0),
                //         ReactiveTextField<String>(
                //           formControlName: 'password',
                //           style: TextStyle(color: Colors.black),
                //           obscureText: true,
                //           validationMessages: {
                //             ValidationMessage.required: (_) =>
                //                 'The password must not be empty',
                //             ValidationMessage.minLength: (_) =>
                //                 'The password must be at least 8 characters',
                //           },
                //           textInputAction: TextInputAction.done,
                //           decoration: InputDecoration(
                //             labelText: 'Password',
                //             // border: OutlineInputBorder(),
                //           ),
                //         ),
                //         SizedBox(height: 16),
                //         FilledButton(
                //           onPressed: () {},
                //           child: Text('Login'),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ),
            );
          },
        ),
      ),
    );
  }
}
