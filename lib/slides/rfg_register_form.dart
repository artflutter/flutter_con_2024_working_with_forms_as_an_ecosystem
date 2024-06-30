import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_register_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgRegisterForm extends FlutterDeckSlideWidget {
  const RfgRegisterForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_register_form',
            title: 'Register form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Register form',
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
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                key: const PageStorageKey('brick_link_register'),
                child: Image.asset(
                  'assets/brick_link_register.png',
                  isAntiAlias: true,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
      rightBuilder: (context) {
        return const RegisterFormWidget();
      },
    );
  }
}
