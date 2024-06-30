import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgBeta extends FlutterDeckSlideWidget {
  const RfgBeta()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_beta',
            header: FlutterDeckHeaderConfiguration(
              title: 'Reactive Forms beta',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf(output: false)
class Login extends Equatable {
  final String email;
  final String password;

  const Login({
    @RfControl(validators: [RequiredValidator()])
    this.email = '',
    
    @RfControl(validators: [RequiredValidator()])
    this.password = '',
  });

  @override
  List<Object?> get props => [email, password];
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
class Login extends Equatable {
  final String? email;
  final String? password;

  const LoginO({
    @RfControl(validators: [RequiredValidator()])
    this.email,
   
    @RfControl(validators: [RequiredValidator()])
    this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
            ''',
          ),
        ),
      ),
    );
  }
}

class RfgOutputBeta extends FlutterDeckSlideWidget {
  const RfgOutputBeta()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_beta_ouput',
            header: FlutterDeckHeaderConfiguration(
              title: 'Reactive Forms beta output',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaOutputAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
class Login {
  final String? email;
  final String? password;

  const Login({
    @RfControl(validators: [RequiredValidator()])
    this.email,
    
    @RfControl(validators: [RequiredValidator()])
    this.password,
  });
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaOutputAnatomyRight'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@Rf()
class LoginOutput extends Equatable {
  final String email;
  final String password;
  
  const LoginOutput({
    @RfControl(validators: [RequiredValidator()])
    required this.email,
    
    @RfControl(validators: [RequiredValidator()]) 
    required this.password
  });
    
  @override
  List<Object?> get props => [email, password];
}
            ''',
          ),
        ),
      ),
    );
  }
}

class RfgOutputBetaFreezed extends FlutterDeckSlideWidget {
  const RfgOutputBetaFreezed()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_beta_ouput_freezed',
            header: FlutterDeckHeaderConfiguration(
              title: 'Reactive Forms beta output freezed',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaOutputFreezedAnatomyLeft'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@freezed
@Rf()
class FreezedClass with _\$FreezedClass {
  factory FreezedClass(
    
    @RfControl<String>() 
    String? email,
    
    @RfControl(validators: [RequiredValidator()]) 
    String? emailR
  
  }) = _FreezedClass;

  factory FreezedClass.fromJson(Map<String, dynamic> json) =>
      _\$FreezedClassFromJson(json);

  bool method() => false;
}
            ''',
          ),
        ),
      ),
      rightBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfBetaOutputFreezedAnatomyRight'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
@freezed
@Rf()
class FreezedClassOutput with _\$FreezedClassOutput {
  factory FreezedClassOutput(

    @RfControl<String>() 
    String? email,
    
    @RfControl(validators: [RequiredValidator()]) 
    String emailR,
  
  }) = _FreezedClassOutput;
  
  factory FreezedClassOutput.fromJson(Map<String, dynamic> json) =>
      _\$FreezedClassOutputFromJson(json);
  
  bool method() => false;
}            ''',
          ),
        ),
      ),
    );
  }
}
