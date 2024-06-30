import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/flutter_login_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LoginForm extends FlutterDeckSlideWidget {
  const LoginForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/login_form',
            title: 'Login form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Login form',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
            child: Image.asset(
              'assets/bricklink.png',
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitHeight,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Image.asset(
              'assets/brick_link_login.png',
              isAntiAlias: true,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
      rightBuilder: (context) {
        return const LoginDemo();
      },
    );
  }
}
