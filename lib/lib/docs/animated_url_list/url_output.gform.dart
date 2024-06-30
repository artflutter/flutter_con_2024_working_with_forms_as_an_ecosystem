// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUrlOFormConsumer extends StatelessWidget {
  const ReactiveUrlOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, UrlOForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlOForm.of(context);

    if (formModel is! UrlOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UrlOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UrlOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UrlOForm form;
}

class ReactiveUrlOForm extends StatelessWidget {
  const ReactiveUrlOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final UrlOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static UrlOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<UrlOFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<UrlOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UrlOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UrlOFormInheritedStreamer(
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

extension ReactiveReactiveUrlOFormExt on BuildContext {
  UrlOForm? urlOFormWatch() => ReactiveUrlOForm.of(this);

  UrlOForm? urlOFormRead() => ReactiveUrlOForm.of(this, listen: false);
}

class UrlOFormBuilder extends StatefulWidget {
  const UrlOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UrlO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context, UrlOForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, UrlOForm formModel)? initState;

  @override
  _UrlOFormBuilderState createState() => _UrlOFormBuilderState();
}

class _UrlOFormBuilderState extends State<UrlOFormBuilder> {
  late UrlOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = UrlOForm(UrlOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logUrlOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant UrlOFormBuilder oldWidget) {
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
    return ReactiveUrlOForm(
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

final _logUrlOForm = Logger.detached('UrlOForm');

class UrlOForm implements FormModel<UrlO, UrlOOutput> {
  UrlOForm(
    this.form,
    this.path,
  );

  static const String urlListControlName = "urlList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String urlListControlPath() => pathBuilder(urlListControlName);

  List<UrlEntityOOutput> get _urlListValue =>
      urlListUrlEntityOForm.map((e) => e.model).toList();

  bool get containsUrlList {
    try {
      form.control(urlListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get urlListErrors => urlListControl.errors;

  void get urlListFocus => form.focus(urlListControlPath());

  void urlListValueUpdate(
    List<UrlEntityO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      urlListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <UrlEntityO>[];
    final toAdd = <UrlEntityO>[];

    localValue.asMap().forEach((k, v) {
      final values = (urlListControl.controls).map((e) => e.value).toList();

      if (urlListUrlEntityOForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      urlListControl.updateValue(
          toUpdate.map((e) => UrlEntityOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        urlListControl.add(UrlEntityOForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void urlListInsert(
    int i,
    UrlEntityO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (urlListControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addUrlListItem(value);
      return;
    }

    urlListControl.insert(
      i,
      UrlEntityOForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void urlListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlListUrlEntityOForm.clear();
    urlListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlListValuePatch(
    List<UrlEntityO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = urlListUrlEntityOForm.asMap().keys;

    final toPatch = <UrlEntityO>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    urlListControl.patchValue(
        toPatch.map((e) => UrlEntityOForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void urlListValueReset(
    List<UrlEntityO> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlListControl.reset(
          value: value
              .map((e) => UrlEntityOForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get urlListControl =>
      form.control(urlListControlPath()) as FormArray<Map<String, Object?>>;

  List<UrlEntityOForm> get urlListUrlEntityOForm {
    final values = (urlListControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, UrlEntityOForm(form, pathBuilder("urlList.$k"))))
        .values
        .toList();
  }

  void urlListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      urlListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      urlListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<UrlEntityOForm>>
      get urlListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<UrlEntityOForm>>(
              form.control(urlListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => urlListUrlEntityOForm);

  void addUrlListItem(UrlEntityO value) {
    urlListControl.add(UrlEntityOForm.formElements(value));
  }

  void removeUrlListItemAtIndex(int i) {
    if ((urlListControl.value ?? []).length > i) {
      urlListControl.removeAt(i);
    }
  }

  void addUrlListItemList(List<UrlEntityO> value) {
    value.map((e) => addUrlListItem(e));
  }

  @override
  UrlOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logUrlOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return UrlOOutput(urlList: _urlListValue);
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

      urlListUrlEntityOForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      urlListUrlEntityOForm.forEach((e) => e.toggleDisabled());

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
    required void Function(UrlOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logUrlOForm.info('Errors');
      _logUrlOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    UrlO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UrlOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    UrlO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(UrlO? urlO) => FormGroup({
        urlListControlName: FormArray(
            (urlO?.urlList ?? [])
                .map((e) => UrlEntityOForm.formElements(e))
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

final _logUrlEntityOForm = Logger.detached('UrlEntityOForm');

class UrlEntityOForm implements FormModel<UrlEntityO, UrlEntityOOutput> {
  UrlEntityOForm(
    this.form,
    this.path,
  );

  static const String labelControlName = "label";

  static const String urlControlName = "url";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String labelControlPath() => pathBuilder(labelControlName);

  String urlControlPath() => pathBuilder(urlControlName);

  String get _labelValue => labelControl.value as String;

  String get _urlValue => urlControl.value as String;

  bool get containsLabel {
    try {
      form.control(labelControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUrl {
    try {
      form.control(urlControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get labelErrors => labelControl.errors;

  Map<String, Object>? get urlErrors => urlControl.errors;

  void get labelFocus => form.focus(labelControlPath());

  void get urlFocus => form.focus(urlControlPath());

  void labelRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLabel) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          labelControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            labelControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void urlRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUrl) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          urlControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            urlControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void labelValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    labelControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void labelValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    labelControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void labelValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      labelControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void urlValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get labelControl =>
      form.control(labelControlPath()) as FormControl<String>;

  FormControl<String> get urlControl =>
      form.control(urlControlPath()) as FormControl<String>;

  void labelSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      labelControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      labelControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void urlSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      urlControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      urlControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UrlEntityOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logUrlEntityOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return UrlEntityOOutput(label: _labelValue, url: _urlValue);
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
    required void Function(UrlEntityOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logUrlEntityOForm.info('Errors');
      _logUrlEntityOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    UrlEntityO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UrlEntityOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    UrlEntityO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(UrlEntityO? urlEntityO) => FormGroup({
        labelControlName: FormControl<String>(
            value: urlEntityO?.label,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        urlControlName: FormControl<String>(
            value: urlEntityO?.url,
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

@Rf()
class UrlOOutput {
  final List<UrlEntityOOutput> urlList;
  UrlOOutput({@RfArray() this.urlList = const []});
}

@RfGroup()
class UrlEntityOOutput {
  final String label;
  final String url;
  UrlEntityOOutput(
      {@RfControl(validators: [RequiredValidator()]) required this.label,
      @RfControl(validators: [RequiredValidator()]) required this.url});
}

class ReactiveUrlOFormArrayBuilder<ReactiveUrlOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveUrlOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveUrlOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveUrlOFormArrayBuilderT>? Function(UrlOForm formModel)?
      control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UrlOForm formModel)? builder;

  final Widget Function(BuildContext context, int i,
      ReactiveUrlOFormArrayBuilderT? item, UrlOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveUrlOFormArrayBuilderT>(
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

class ReactiveUrlOFormFormGroupArrayBuilder<
    ReactiveUrlOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveUrlOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveUrlOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveUrlOFormFormGroupArrayBuilderT>>
      Function(UrlOForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UrlOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveUrlOFormFormGroupArrayBuilderT? item,
      UrlOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveUrlOFormFormGroupArrayBuilderT>[])
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