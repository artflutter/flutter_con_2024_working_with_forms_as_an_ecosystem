import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended_nullable_output.gform.dart';

@Rf(output: false)
class LoginExtendedNullableO {
  final String? email;

  final String? password;

  final bool? rememberMe;

  final String? theme;

  final UserMode? mode;

  final int? timeout;

  final double? height;

  LoginExtendedNullableO({
    @RfControl<String>(validators: []) this.email,
    @RfControl() this.password,
    @RfControl<bool>() this.rememberMe,
    @RfControl<String>() this.theme,
    @RfControl<UserMode>() this.mode,
    @RfControl<int>() this.timeout,
    @RfControl<double>() this.height,
  });
}
