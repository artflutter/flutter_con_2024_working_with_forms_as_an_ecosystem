import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_macos_ui/reactive_macos_ui.dart';

class RfMacosLoginFormWidget extends StatelessWidget {
  const RfMacosLoginFormWidget({super.key});

  FormGroup buildForm() => fb.group(<String, Object>{
        'email': FormControl<String>(),
        'password': FormControl<String>(),
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MacosTheme(
        data: MacosThemeData(),
        child: Transform.scale(
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
                          ReactiveMacosTextField<String>(
                            formControlName: 'email',
                            prefix: const Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: SizedBox.square(
                                dimension: 20,
                                child: Icon(
                                  CupertinoIcons.mail,
                                  size: 16,
                                  color: CupertinoColors.separator,
                                ),
                              ),
                            ),
                            placeholder: 'Email',
                          ),
                          const SizedBox(height: 16.0),
                          ReactiveMacosTextField<String>(
                            formControlName: 'password',
                            prefix: const Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: SizedBox.square(
                                dimension: 20,
                                child: Icon(
                                  Icons.key_sharp,
                                  size: 16,
                                  color: CupertinoColors.separator,
                                ),
                              ),
                            ),
                            // style: TextStyle(fontSize: 14),
                            placeholder: 'Password',
                          ),
                          const SizedBox(height: 16),
                          PushButton(
                            controlSize: ControlSize.large,
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
