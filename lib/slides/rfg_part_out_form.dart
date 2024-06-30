import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_partout_form.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgPartOutForm extends FlutterDeckSlideWidget {
  const RfgPartOutForm()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_part_out_form',
            header: FlutterDeckHeaderConfiguration(
              title: 'Reactive Forms - part out',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const PartOutFormWidget(),
    );
  }
}
