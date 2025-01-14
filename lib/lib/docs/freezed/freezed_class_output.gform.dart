// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveFreezedClassOFormConsumer extends StatelessWidget {
  const ReactiveFreezedClassOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, FreezedClassOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassOForm.of(context);

    if (formModel is! FreezedClassOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class FreezedClassOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const FreezedClassOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final FreezedClassOForm form;
}

class ReactiveFreezedClassOForm extends StatelessWidget {
  const ReactiveFreezedClassOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final FreezedClassOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static FreezedClassOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              FreezedClassOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        FreezedClassOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as FreezedClassOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return FreezedClassOFormInheritedStreamer(
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

extension ReactiveReactiveFreezedClassOFormExt on BuildContext {
  FreezedClassOForm? freezedClassOFormWatch() =>
      ReactiveFreezedClassOForm.of(this);

  FreezedClassOForm? freezedClassOFormRead() =>
      ReactiveFreezedClassOForm.of(this, listen: false);
}

class FreezedClassOFormBuilder extends StatefulWidget {
  const FreezedClassOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final FreezedClassO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, FreezedClassOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, FreezedClassOForm formModel)?
      initState;

  @override
  _FreezedClassOFormBuilderState createState() =>
      _FreezedClassOFormBuilderState();
}

class _FreezedClassOFormBuilderState extends State<FreezedClassOFormBuilder> {
  late FreezedClassOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        FreezedClassOForm(FreezedClassOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logFreezedClassOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant FreezedClassOFormBuilder oldWidget) {
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
    return ReactiveFreezedClassOForm(
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

final _logFreezedClassOForm = Logger.detached('FreezedClassOForm');

class FreezedClassOForm
    implements FormModel<FreezedClassO, FreezedClassOOutput> {
  FreezedClassOForm(
    this.form,
    this.path,
  );

  static const String genderControlName = "gender";

  static const String genderRControlName = "genderR";

  static const String idControlName = "id";

  static const String idRControlName = "idR";

  static const String nameControlName = "name";

  static const String logoImageControlName = "logoImage";

  static const String yearControlName = "year";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String genderControlPath() => pathBuilder(genderControlName);

  String genderRControlPath() => pathBuilder(genderRControlName);

  String idControlPath() => pathBuilder(idControlName);

  String idRControlPath() => pathBuilder(idRControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String logoImageControlPath() => pathBuilder(logoImageControlName);

  String yearControlPath() => pathBuilder(yearControlName);

  String? get _genderValue => genderControl?.value;

  String get _genderRValue => genderRControl.value as String;

  String? get _idValue => idControl?.value;

  String get _idRValue => idRControl.value as String;

  String? get _nameValue => nameControl?.value;

  String? get _logoImageValue => logoImageControl?.value;

  double? get _yearValue => yearControl?.value;

  bool get containsGender {
    try {
      form.control(genderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsGenderR {
    try {
      form.control(genderRControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIdR {
    try {
      form.control(idRControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLogoImage {
    try {
      form.control(logoImageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsYear {
    try {
      form.control(yearControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get genderErrors => genderControl?.errors;

  Map<String, Object>? get genderRErrors => genderRControl.errors;

  Map<String, Object>? get idErrors => idControl?.errors;

  Map<String, Object>? get idRErrors => idRControl.errors;

  Map<String, Object>? get nameErrors => nameControl?.errors;

  Map<String, Object>? get logoImageErrors => logoImageControl?.errors;

  Map<String, Object>? get yearErrors => yearControl?.errors;

  void get genderFocus => form.focus(genderControlPath());

  void get genderRFocus => form.focus(genderRControlPath());

  void get idFocus => form.focus(idControlPath());

  void get idRFocus => form.focus(idRControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get logoImageFocus => form.focus(logoImageControlPath());

  void get yearFocus => form.focus(yearControlPath());

  void genderRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsGender) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderRRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsGenderR) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderRControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderRControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idRRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsIdR) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idRControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idRControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void logoImageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLogoImage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          logoImageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            logoImageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void yearRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsYear) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          yearControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            yearControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderRValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderRControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idRValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idRControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void logoImageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoImageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void yearValueUpdate(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    yearControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderRValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderRControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idRValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idRControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void logoImageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoImageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void yearValuePatch(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    yearControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void genderValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void genderRValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      genderRControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void idValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void idRValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idRControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void logoImageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      logoImageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void yearValueReset(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      yearControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get genderControl => containsGender
      ? form.control(genderControlPath()) as FormControl<String>?
      : null;

  FormControl<String> get genderRControl =>
      form.control(genderRControlPath()) as FormControl<String>;

  FormControl<String>? get idControl =>
      containsId ? form.control(idControlPath()) as FormControl<String>? : null;

  FormControl<String> get idRControl =>
      form.control(idRControlPath()) as FormControl<String>;

  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get logoImageControl => containsLogoImage
      ? form.control(logoImageControlPath()) as FormControl<String>?
      : null;

  FormControl<double>? get yearControl => containsYear
      ? form.control(yearControlPath()) as FormControl<double>?
      : null;

  void genderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void genderRSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderRControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderRControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void idRSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idRControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idRControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void logoImageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      logoImageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      logoImageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void yearSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      yearControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      yearControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  FreezedClassOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logFreezedClassOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return FreezedClassOOutput(_genderValue, _genderRValue,
        id: _idValue,
        idR: _idRValue,
        name: _nameValue,
        logoImage: _logoImageValue,
        year: _yearValue);
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
    required void Function(FreezedClassOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logFreezedClassOForm.info('Errors');
      _logFreezedClassOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    FreezedClassO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(FreezedClassOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    FreezedClassO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(FreezedClassO? freezedClassO) => FormGroup({
        genderControlName: FormControl<String>(
            value: freezedClassO?.gender,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        genderRControlName: FormControl<String>(
            value: freezedClassO?.genderR,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: FormControl<String>(
            value: freezedClassO?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idRControlName: FormControl<String>(
            value: freezedClassO?.idR,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: freezedClassO?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        logoImageControlName: FormControl<String>(
            value: freezedClassO?.logoImage,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        yearControlName: FormControl<double>(
            value: freezedClassO?.year,
            validators: [],
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

@freezed
@Rf(output: true)
class FreezedClassOOutput with _$FreezedClassOOutput {
  FreezedClassOOutput._();
  factory FreezedClassOOutput(@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String genderR,
      {@RfControl() String? id,
      @RfControl(validators: [RequiredValidator()]) required String idR,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year}) = _FreezedClassOOutput;
  factory FreezedClassOOutput.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassOOutputFromJson(json);
  bool method() => false;
}

class ReactiveFreezedClassOFormArrayBuilder<
    ReactiveFreezedClassOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveFreezedClassOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveFreezedClassOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveFreezedClassOFormArrayBuilderT>? Function(
      FreezedClassOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      FreezedClassOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveFreezedClassOFormArrayBuilderT? item,
      FreezedClassOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveFreezedClassOFormArrayBuilderT>(
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

class ReactiveFreezedClassOFormFormGroupArrayBuilder<
    ReactiveFreezedClassOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveFreezedClassOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveFreezedClassOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveFreezedClassOFormFormGroupArrayBuilderT>>
      Function(FreezedClassOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      FreezedClassOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveFreezedClassOFormFormGroupArrayBuilderT? item,
      FreezedClassOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveFreezedClassOFormFormGroupArrayBuilderT>[])
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
