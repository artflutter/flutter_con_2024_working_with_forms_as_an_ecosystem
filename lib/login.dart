import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@Rf(output: false)
class Login {
  final String email;

  final String password;
  final bool stay;

  const Login({
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.email = '',
    @RfControl(validators: [RequiredValidator()]) this.password = '',
    this.stay = false,
  });
}
