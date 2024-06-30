import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterLoginFormAnatomy extends FlutterDeckSlideWidget {
  const FlutterLoginFormAnatomy()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter_login_form_anatomy',
            header:
                FlutterDeckHeaderConfiguration(title: 'Flutter form anatomy'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const SingleChildScrollView(
          key: PageStorageKey('value'),
          child: Center(
            child: FlutterDeckCodeHighlight(
              language: 'dart',
              code: '''
class _LoginDemoState extends State<LoginDemo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  String _pass = ''; /// VARIABLES TO HOLD THE VALUE
  String _email = ''; /// VARIABLES TO HOLD THE VALUE
  bool _stay = false; /// VARIABLES TO HOLD THE VALUE

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, /// FORM KEY
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField( /// EMAIL TEXT INPUT
            onSaved: (value) => _email = value ?? '',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField( /// PASSWORD TEXT INPUT
            obscureText: true,
            controller: _textController,
            onSaved: (value) => _pass = value ?? '',
          ),
          CheckboxListTile( /// CHECKBOX
            value: _stay,
            onChanged: (_) => setState(() => _stay = !_stay),
          ),
          FilledButton(
            onPressed: () {
              _formKey.currentState?.save();
              if (_formKey.currentState!.validate()) {
                /// PERFORM ACTIONS WITH VALUES
              }
            },
            child: const Text('Login'),
          ),
          FilledButton(
            child: const Text('Forgot Password'),
          ),
        ],
      ),
    );
  }
}
            ''',
            ),
          ),
        );
      },
    );
  }
}
