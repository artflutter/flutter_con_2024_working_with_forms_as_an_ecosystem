import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/rfg_register_form.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'register.gform.dart';

@Rf(output: false)
class Register {
  final String email;
  final String username;
  final String password;
  final DateTime? dob;
  final String location;
  final String? state;

  const Register({
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.email = '',
    @RfControl(
      validators: [RequiredValidator()],
      asyncValidators: [UniqueUserNameAsyncValidator()],
      asyncValidatorsDebounceTime: 300,
    )
    this.username = '',
    @RfControl(validators: [RequiredValidator()]) this.location = 'USA',
    @RfControl(validators: [RequiredValidator()]) this.state,
    @RfControl(validators: [RequiredValidator()]) this.password = '',
    @RfControl(validators: [RequiredValidator()]) this.dob,
  });
}
