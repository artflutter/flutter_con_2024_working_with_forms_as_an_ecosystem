import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RfUbuntuLoginFormWidget extends StatelessWidget {
  const RfUbuntuLoginFormWidget({super.key});

  FormGroup buildForm() => fb.group(<String, Object>{
        'email': FormControl<String>(),
        'password': FormControl<String>(),
      });

  @override
  Widget build(BuildContext context) {
    return InheritedYaruVariant(
      child: Builder(builder: (context) {
        return YaruTheme(
            data: YaruThemeData(
              variant: InheritedYaruVariant.of(context),
            ),
            builder: (context, yaru, child) {
              return MaterialApp(
                theme: yaru.theme,
                darkTheme: yaru.darkTheme,
                highContrastTheme: yaruHighContrastLight,
                highContrastDarkTheme: yaruHighContrastDark,
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
                            height: 217,
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
                                    ReactiveTextField<String>(
                                      formControlName: 'email',
                                      decoration: const InputDecoration(
                                        label: Text('Email'),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    ReactiveTextField<String>(
                                      formControlName: 'password',
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        label: Text('Password'),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    ElevatedButton(
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
            });
      }),
    );
  }
}

class InheritedYaruVariant
    extends InheritedNotifier<ValueNotifier<YaruVariant?>> {
  InheritedYaruVariant({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier(null));

  static YaruVariant? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<InheritedYaruVariant>()!
        .notifier!
        .value;
  }

  static void apply(BuildContext context, YaruVariant variant) {
    context
        .findAncestorWidgetOfExactType<InheritedYaruVariant>()!
        .notifier!
        .value = variant;
  }
}
