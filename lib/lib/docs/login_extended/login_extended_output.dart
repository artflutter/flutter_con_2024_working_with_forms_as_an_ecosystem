import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended_output.gform.dart';

@Rf()
@RfGroup(
  validators: [AllFieldsRequired()],
)
class LoginExtendedO {
  final String? email;

  final String password;

  final bool rememberMe;

  final String theme;

  final UserMode mode;

  final int timeout;

  final double height;

  final String? unAnnotated;
  final List<int> someIntList;

  LoginExtendedO({
    @RfControl(
      validators: [RequiredValidator()],
      asyncValidators: [UniqueEmailAsyncValidator()],
    )
    this.email,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.password,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.rememberMe,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.theme,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.mode,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.timeout,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.height,
    this.unAnnotated,
    this.someIntList = const [],
  });
}
