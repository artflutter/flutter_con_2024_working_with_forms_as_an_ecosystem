// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveRegisterFormConsumer extends StatelessWidget {
  const ReactiveRegisterFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, RegisterForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterForm.of(context);

    if (formModel is! RegisterForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class RegisterFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const RegisterFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final RegisterForm form;
}

class ReactiveRegisterForm extends StatelessWidget {
  const ReactiveRegisterForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final RegisterForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static RegisterForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<RegisterFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        RegisterFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as RegisterFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return RegisterFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveRegisterFormExt on BuildContext {
  RegisterForm? registerFormWatch() => ReactiveRegisterForm.of(this);

  RegisterForm? registerFormRead() =>
      ReactiveRegisterForm.of(this, listen: false);
}

class RegisterFormBuilder extends StatefulWidget {
  const RegisterFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Register? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, RegisterForm formModel, Widget? child) builder;

  final void Function(BuildContext context, RegisterForm formModel)? initState;

  @override
  _RegisterFormBuilderState createState() => _RegisterFormBuilderState();
}

class _RegisterFormBuilderState extends State<RegisterFormBuilder> {
  late RegisterForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = RegisterForm(RegisterForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logRegisterForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RegisterFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveRegisterForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logRegisterForm = Logger.detached('RegisterForm');

class RegisterForm implements FormModel<Register, Register> {
  RegisterForm(
    this.form,
    this.path,
  );

  static const String emailControlName = "email";

  static const String usernameControlName = "username";

  static const String locationControlName = "location";

  static const String stateControlName = "state";

  static const String passwordControlName = "password";

  static const String dobControlName = "dob";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String emailControlPath() => pathBuilder(emailControlName);

  String usernameControlPath() => pathBuilder(usernameControlName);

  String locationControlPath() => pathBuilder(locationControlName);

  String stateControlPath() => pathBuilder(stateControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String dobControlPath() => pathBuilder(dobControlName);

  String get _emailValue => emailControl.value ?? "";

  String get _usernameValue => usernameControl.value ?? "";

  String get _locationValue => locationControl.value ?? "USA";

  String? get _stateValue => stateControl?.value;

  String get _passwordValue => passwordControl.value ?? "";

  DateTime? get _dobValue => dobControl?.value;

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUsername {
    try {
      form.control(usernameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLocation {
    try {
      form.control(locationControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsState {
    try {
      form.control(stateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDob {
    try {
      form.control(dobControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get emailErrors => emailControl.errors;

  Map<String, Object> get usernameErrors => usernameControl.errors;

  Map<String, Object> get locationErrors => locationControl.errors;

  Map<String, Object>? get stateErrors => stateControl?.errors;

  Map<String, Object> get passwordErrors => passwordControl.errors;

  Map<String, Object>? get dobErrors => dobControl?.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get usernameFocus => form.focus(usernameControlPath());

  void get locationFocus => form.focus(locationControlPath());

  void get stateFocus => form.focus(stateControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get dobFocus => form.focus(dobControlPath());

  void stateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsState) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          stateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            stateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void dobRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDob) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          dobControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            dobControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void usernameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    usernameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void locationValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    locationControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void stateValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dobValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dobControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void usernameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    usernameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void locationValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    locationControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void stateValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dobValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dobControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void usernameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      usernameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void locationValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      locationControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void stateValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      stateControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void dobValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dobControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  FormControl<String> get usernameControl =>
      form.control(usernameControlPath()) as FormControl<String>;

  FormControl<String> get locationControl =>
      form.control(locationControlPath()) as FormControl<String>;

  FormControl<String>? get stateControl => containsState
      ? form.control(stateControlPath()) as FormControl<String>?
      : null;

  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;

  FormControl<DateTime>? get dobControl => containsDob
      ? form.control(dobControlPath()) as FormControl<DateTime>?
      : null;

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void usernameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      usernameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      usernameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void locationSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      locationControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      locationControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void stateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      stateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      stateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dobSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dobControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dobControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Register get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logRegisterForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Register(
        email: _emailValue,
        username: _usernameValue,
        location: _locationValue,
        state: _stateValue,
        password: _passwordValue,
        dob: _dobValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(Register model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logRegisterForm.info('Errors');
      _logRegisterForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Register? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(RegisterForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Register? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Register? register) => FormGroup({
        emailControlName: FormControl<String>(
            value: register?.email,
            validators: [RequiredValidator(), EmailValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        usernameControlName: FormControl<String>(
            value: register?.username,
            validators: [RequiredValidator()],
            asyncValidators: [UniqueUserNameAsyncValidator()],
            asyncValidatorsDebounceTime: 300,
            disabled: false,
            touched: false),
        locationControlName: FormControl<String>(
            value: register?.location,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        stateControlName: FormControl<String>(
            value: register?.state,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: register?.password,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dobControlName: FormControl<DateTime>(
            value: register?.dob,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveRegisterFormArrayBuilder<ReactiveRegisterFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveRegisterFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveRegisterFormArrayBuilderT>? formControl;

  final FormArray<ReactiveRegisterFormArrayBuilderT>? Function(
      RegisterForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, RegisterForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveRegisterFormArrayBuilderT? item,
      RegisterForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveRegisterFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveRegisterFormFormGroupArrayBuilder<
    ReactiveRegisterFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveRegisterFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveRegisterFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveRegisterFormFormGroupArrayBuilderT>>
      Function(RegisterForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, RegisterForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveRegisterFormFormGroupArrayBuilderT? item,
      RegisterForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveRegisterForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveRegisterFormFormGroupArrayBuilderT>[])
                .asMap()
                .map((i, item) => MapEntry(
                      i,
                      itemBuilder(
                        context,
                        i,
                        item,
                        formModel,
                      ),
                    ))
                .values
                .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
