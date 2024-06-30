import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgPartoutFormAnatomy extends FlutterDeckSlideWidget {
  const RfgPartoutFormAnatomy()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_partout_form_anatomy',
            header: FlutterDeckHeaderConfiguration(
              title: 'Part out form anatomy',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 4,
        right: 2,
      ),
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfgRegistrationFormAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
@freezed
class PartOut with _\$PartOut {
  const factory PartOut({
    
    @RfArray() 
    @Default([]) 
    List<Part> partList,
        
  }) = _PartOut;
}

@RfGroup()
@freezed
class Part with _\$Part {

  const factory Part({
    
    @Default('') String description,
    
    @Default('') String remarks,
    
    @Default([]) List<SelectedFile> image,
  }) = _Part;
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const SizedBox(),
    );
  }
}
