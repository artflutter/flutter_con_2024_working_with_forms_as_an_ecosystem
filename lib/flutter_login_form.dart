import 'package:flutter/material.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _pass = '';
  bool _stay = false;
  String _email = '';

  final _textController = TextEditingController(
    text: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (value) => _email = value ?? '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 15,
                  bottom: 0,
                ),
                child: TextFormField(
                  obscureText: true,
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  style: const TextStyle(color: Colors.black),
                  onSaved: (value) => _pass = value ?? '',
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 200,
                child: CheckboxListTile(
                  value: _stay,
                  title: const Text(
                    'Stay logged in',
                    style: TextStyle(color: Colors.black),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (_) => setState(() => _stay = !_stay),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 50,
                width: 250,
                child: FilledButton(
                  onPressed: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {}
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
          ),
        ),
      ),
    );
  }
}
