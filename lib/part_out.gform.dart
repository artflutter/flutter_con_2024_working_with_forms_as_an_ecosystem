// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'part_out.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePartOutFormConsumer extends StatelessWidget {
  const ReactivePartOutFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PartOutForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartOutForm.of(context);

    if (formModel is! PartOutForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PartOutFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PartOutFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PartOutForm form;
}

class ReactivePartOutForm extends StatelessWidget {
  const ReactivePartOutForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final PartOutForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static PartOutForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<PartOutFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PartOutFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PartOutFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PartOutFormInheritedStreamer(
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

extension ReactiveReactivePartOutFormExt on BuildContext {
  PartOutForm? partOutFormWatch() => ReactivePartOutForm.of(this);

  PartOutForm? partOutFormRead() => ReactivePartOutForm.of(this, listen: false);
}

class PartOutFormBuilder extends StatefulWidget {
  const PartOutFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PartOut? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, PartOutForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PartOutForm formModel)? initState;

  @override
  _PartOutFormBuilderState createState() => _PartOutFormBuilderState();
}

class _PartOutFormBuilderState extends State<PartOutFormBuilder> {
  late PartOutForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = PartOutForm(PartOutForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logPartOutForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant PartOutFormBuilder oldWidget) {
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
    return ReactivePartOutForm(
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

final _logPartOutForm = Logger.detached('PartOutForm');

class PartOutForm implements FormModel<PartOut, PartOut> {
  PartOutForm(
    this.form,
    this.path,
  );

  static const String partListControlName = "partList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String partListControlPath() => pathBuilder(partListControlName);

  List<Part> get _partListValue =>
      partListPartForm.map((e) => e.model).toList();

  bool get containsPartList {
    try {
      form.control(partListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get partListErrors => partListControl.errors;

  void get partListFocus => form.focus(partListControlPath());

  void partListValueUpdate(
    List<Part> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      partListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <Part>[];
    final toAdd = <Part>[];

    localValue.asMap().forEach((k, v) {
      final values = (partListControl.controls).map((e) => e.value).toList();

      if (partListPartForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      partListControl.updateValue(
          toUpdate.map((e) => PartForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        partListControl.add(PartForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void partListInsert(
    int i,
    Part value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (partListControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addPartListItem(value);
      return;
    }

    partListControl.insert(
      i,
      PartForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void partListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    partListPartForm.clear();
    partListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void partListValuePatch(
    List<Part> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = partListPartForm.asMap().keys;

    final toPatch = <Part>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    partListControl.patchValue(
        toPatch.map((e) => PartForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void partListValueReset(
    List<Part> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      partListControl.reset(
          value: value.map((e) => PartForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get partListControl =>
      form.control(partListControlPath()) as FormArray<Map<String, Object?>>;

  List<PartForm> get partListPartForm {
    final values = (partListControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) => MapEntry(k, PartForm(form, pathBuilder("partList.$k"))))
        .values
        .toList();
  }

  void partListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      partListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      partListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<PartForm>>
      get partListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<PartForm>>(
              form.control(partListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => partListPartForm);

  void addPartListItem(Part value) {
    partListControl.add(PartForm.formElements(value));
  }

  void removePartListItemAtIndex(int i) {
    if ((partListControl.value ?? []).length > i) {
      partListControl.removeAt(i);
    }
  }

  void addPartListItemList(List<Part> value) {
    value.map((e) => addPartListItem(e));
  }

  @override
  PartOut get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logPartOutForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return PartOut(partList: _partListValue);
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

      partListPartForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      partListPartForm.forEach((e) => e.toggleDisabled());

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
    required void Function(PartOut model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logPartOutForm.info('Errors');
      _logPartOutForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PartOut? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PartOutForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PartOut? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PartOut? partOut) => FormGroup({
        partListControlName: FormArray(
            (partOut?.partList ?? [])
                .map((e) => PartForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logPartForm = Logger.detached('PartForm');

class PartForm implements FormModel<Part, Part> {
  PartForm(
    this.form,
    this.path,
  );

  static const String descriptionControlName = "description";

  static const String remarksControlName = "remarks";

  static const String imageControlName = "image";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String remarksControlPath() => pathBuilder(remarksControlName);

  String imageControlPath() => pathBuilder(imageControlName);

  String get _descriptionValue => descriptionControl.value as String;

  String get _remarksValue => remarksControl.value as String;

  List<SelectedFile> get _imageValue =>
      imageControl.value as List<SelectedFile>;

  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRemarks {
    try {
      form.control(remarksControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsImage {
    try {
      form.control(imageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get descriptionErrors => descriptionControl.errors;

  Map<String, Object> get remarksErrors => remarksControl.errors;

  Map<String, Object> get imageErrors => imageControl.errors;

  void get descriptionFocus => form.focus(descriptionControlPath());

  void get remarksFocus => form.focus(remarksControlPath());

  void get imageFocus => form.focus(imageControlPath());

  void descriptionValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void remarksValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    remarksControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValueUpdate(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void remarksValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    remarksControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValuePatch(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void remarksValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      remarksControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void imageValueReset(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imageControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;

  FormControl<String> get remarksControl =>
      form.control(remarksControlPath()) as FormControl<String>;

  FormControl<List<SelectedFile>> get imageControl =>
      form.control(imageControlPath()) as FormControl<List<SelectedFile>>;

  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void remarksSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      remarksControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      remarksControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void imageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imageControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imageControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Part get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logPartForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Part(
        description: _descriptionValue,
        remarks: _remarksValue,
        image: _imageValue);
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
    required void Function(Part model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logPartForm.info('Errors');
      _logPartForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Part? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PartForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Part? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Part? part) => FormGroup({
        descriptionControlName: FormControl<String>(
            value: part?.description,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        remarksControlName: FormControl<String>(
            value: part?.remarks,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        imageControlName: FormControl<List<SelectedFile>>(
            value: part?.image,
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

class ReactivePartOutFormArrayBuilder<ReactivePartOutFormArrayBuilderT>
    extends StatelessWidget {
  const ReactivePartOutFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactivePartOutFormArrayBuilderT>? formControl;

  final FormArray<ReactivePartOutFormArrayBuilderT>? Function(
      PartOutForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PartOutForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePartOutFormArrayBuilderT? item,
      PartOutForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartOutForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactivePartOutFormArrayBuilderT>(
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

class ReactivePartOutFormFormGroupArrayBuilder<
    ReactivePartOutFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactivePartOutFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactivePartOutFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactivePartOutFormFormGroupArrayBuilderT>>
      Function(PartOutForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PartOutForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePartOutFormFormGroupArrayBuilderT? item,
      PartOutForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePartOutForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactivePartOutFormFormGroupArrayBuilderT>[])
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
