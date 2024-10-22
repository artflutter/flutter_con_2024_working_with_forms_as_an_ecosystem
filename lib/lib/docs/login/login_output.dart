import 'package:equatable/equatable.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart'
    hide MustMatchValidator;

part 'login_output.gform.dart';

@Rf()
@RfGroup(
  validators: [MustMatchValidator()],
)
class LoginO extends Equatable {
  final String? email;

  final String? password;

  const LoginO({
    @RfControl(
      validators: [RequiredValidator(), RequiredValidator()],
    )
    this.email,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
