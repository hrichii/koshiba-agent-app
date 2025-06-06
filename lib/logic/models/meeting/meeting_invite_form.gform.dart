// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_invite_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMeetingInviteFormFormConsumer extends StatelessWidget {
  const ReactiveMeetingInviteFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, MeetingInviteFormForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingInviteFormForm.of(context);

    if (formModel is! MeetingInviteFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MeetingInviteFormFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const MeetingInviteFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MeetingInviteFormForm form;
}

class ReactiveMeetingInviteFormForm extends StatelessWidget {
  const ReactiveMeetingInviteFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final MeetingInviteFormForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static MeetingInviteFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MeetingInviteFormFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MeetingInviteFormFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MeetingInviteFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MeetingInviteFormFormInheritedStreamer(
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

extension ReactiveReactiveMeetingInviteFormFormExt on BuildContext {
  MeetingInviteFormForm? meetingInviteFormFormWatch() =>
      ReactiveMeetingInviteFormForm.of(this);

  MeetingInviteFormForm? meetingInviteFormFormRead() =>
      ReactiveMeetingInviteFormForm.of(this, listen: false);
}

class MeetingInviteFormFormBuilder extends StatefulWidget {
  const MeetingInviteFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MeetingInviteForm? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, MeetingInviteFormForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, MeetingInviteFormForm formModel)?
      initState;

  @override
  _MeetingInviteFormFormBuilderState createState() =>
      _MeetingInviteFormFormBuilderState();
}

class _MeetingInviteFormFormBuilderState
    extends State<MeetingInviteFormFormBuilder> {
  late MeetingInviteFormForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = MeetingInviteFormForm(
        MeetingInviteFormForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logMeetingInviteFormForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant MeetingInviteFormFormBuilder oldWidget) {
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
    return ReactiveMeetingInviteFormForm(
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

final _logMeetingInviteFormForm = Logger.detached('MeetingInviteFormForm');

class MeetingInviteFormForm
    implements FormModel<MeetingInviteForm, MeetingInviteForm> {
  MeetingInviteFormForm(
    this.form,
    this.path,
  );

  static const String uriControlName = "uri";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String uriControlPath() => pathBuilder(uriControlName);

  String? get _uriValue => uriControl.value;

  String? get _uriRawValue => uriControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsUri {
    try {
      form.control(uriControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get uriErrors => uriControl.errors;

  void get uriFocus => form.focus(uriControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void uriRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUri) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          uriControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            uriControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void uriValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    uriControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void uriValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    uriControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void uriValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      uriControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get uriControl =>
      form.control(uriControlPath()) as FormControl<String>;

  void uriSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      uriControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      uriControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  MeetingInviteForm get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logMeetingInviteFormForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return MeetingInviteForm(uri: _uriValue);
  }

  @override
  MeetingInviteForm get rawModel {
    return MeetingInviteForm(uri: _uriRawValue);
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
  bool equalsTo(MeetingInviteForm? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      MeetingInviteFormForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(MeetingInviteForm model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logMeetingInviteFormForm.info('Errors');
      _logMeetingInviteFormForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    MeetingInviteForm? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MeetingInviteFormForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    MeetingInviteForm? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(MeetingInviteForm? meetingInviteForm) =>
      FormGroup({
        uriControlName: FormControl<String>(
            value: meetingInviteForm?.uri,
            validators: AppValidation.meetingUri,
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

class ReactiveMeetingInviteFormFormArrayBuilder<
    ReactiveMeetingInviteFormFormArrayBuilderT> extends StatelessWidget {
  const ReactiveMeetingInviteFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveMeetingInviteFormFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMeetingInviteFormFormArrayBuilderT>? Function(
      MeetingInviteFormForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MeetingInviteFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveMeetingInviteFormFormArrayBuilderT> control,
      ReactiveMeetingInviteFormFormArrayBuilderT? item,
      MeetingInviteFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingInviteFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMeetingInviteFormFormArrayBuilderT>(
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
                  formArray.controls[i] as FormControl<
                      ReactiveMeetingInviteFormFormArrayBuilderT>,
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

class ReactiveMeetingInviteFormFormFormGroupArrayBuilder<
        ReactiveMeetingInviteFormFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveMeetingInviteFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveMeetingInviteFormFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveMeetingInviteFormFormFormGroupArrayBuilderT>>
      Function(MeetingInviteFormForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MeetingInviteFormForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveMeetingInviteFormFormFormGroupArrayBuilderT? item,
      MeetingInviteFormForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingInviteFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveMeetingInviteFormFormFormGroupArrayBuilderT>[])
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
