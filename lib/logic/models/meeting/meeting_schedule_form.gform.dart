// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_schedule_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMeetingScheduleFormFormConsumer extends StatelessWidget {
  const ReactiveMeetingScheduleFormFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
    BuildContext context,
    MeetingScheduleFormForm formModel,
    Widget? child,
  )
  builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingScheduleFormForm.of(context);

    if (formModel is! MeetingScheduleFormForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MeetingScheduleFormFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const MeetingScheduleFormFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(stream, child, key: key);

  final MeetingScheduleFormForm form;
}

class ReactiveMeetingScheduleFormForm extends StatelessWidget {
  const ReactiveMeetingScheduleFormForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvokedWithResult,
  }) : super(key: key);

  final Widget child;

  final MeetingScheduleFormForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
  onPopInvokedWithResult;

  static MeetingScheduleFormForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
            MeetingScheduleFormFormInheritedStreamer
          >()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<
          MeetingScheduleFormFormInheritedStreamer
        >();
    return element == null
        ? null
        : (element.widget as MeetingScheduleFormFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MeetingScheduleFormFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveMeetingScheduleFormFormExt on BuildContext {
  MeetingScheduleFormForm? meetingScheduleFormFormWatch() =>
      ReactiveMeetingScheduleFormForm.of(this);

  MeetingScheduleFormForm? meetingScheduleFormFormRead() =>
      ReactiveMeetingScheduleFormForm.of(this, listen: false);
}

class MeetingScheduleFormFormBuilder extends StatefulWidget {
  const MeetingScheduleFormFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvokedWithResult,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MeetingScheduleForm? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
  onPopInvokedWithResult;

  final Widget Function(
    BuildContext context,
    MeetingScheduleFormForm formModel,
    Widget? child,
  )
  builder;

  final void Function(BuildContext context, MeetingScheduleFormForm formModel)?
  initState;

  @override
  _MeetingScheduleFormFormBuilderState createState() =>
      _MeetingScheduleFormFormBuilderState();
}

class _MeetingScheduleFormFormBuilderState
    extends State<MeetingScheduleFormFormBuilder> {
  late MeetingScheduleFormForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = MeetingScheduleFormForm(
      MeetingScheduleFormForm.formElements(widget.model),
      null,
    );

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logMeetingScheduleFormForm.onRecord.listen((
      LogRecord e,
    ) {
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
  void didUpdateWidget(covariant MeetingScheduleFormFormBuilder oldWidget) {
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
    return ReactiveMeetingScheduleFormForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logMeetingScheduleFormForm = Logger.detached('MeetingScheduleFormForm');

class MeetingScheduleFormForm
    implements FormModel<MeetingScheduleForm, MeetingScheduleForm> {
  MeetingScheduleFormForm(this.form, this.path);

  static const String titleControlName = "title";

  static const String uriControlName = "uri";

  static const String isJoinRightNowControlName = "isJoinRightNow";

  static const String startAtControlName = "startAt";

  static const String endAtControlName = "endAt";

  static const String descriptionControlName = "description";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String titleControlPath() => pathBuilder(titleControlName);

  String uriControlPath() => pathBuilder(uriControlName);

  String isJoinRightNowControlPath() => pathBuilder(isJoinRightNowControlName);

  String startAtControlPath() => pathBuilder(startAtControlName);

  String endAtControlPath() => pathBuilder(endAtControlName);

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String? get _titleValue => titleControl.value;

  String? get _uriValue => uriControl.value;

  bool? get _isJoinRightNowValue => isJoinRightNowControl.value;

  DateTime? get _startAtValue => startAtControl.value;

  DateTime? get _endAtValue => endAtControl.value;

  String? get _descriptionValue => descriptionControl.value;

  String? get _titleRawValue => titleControl.value;

  String? get _uriRawValue => uriControl.value;

  bool? get _isJoinRightNowRawValue => isJoinRightNowControl.value;

  DateTime? get _startAtRawValue => startAtControl.value;

  DateTime? get _endAtRawValue => endAtControl.value;

  String? get _descriptionRawValue => descriptionControl.value;

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsUri {
    try {
      form.control(uriControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsIsJoinRightNow {
    try {
      form.control(isJoinRightNowControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsStartAt {
    try {
      form.control(startAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsEndAt {
    try {
      form.control(endAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
    'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step',
  )
  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get titleErrors => titleControl.errors;

  Map<String, Object>? get uriErrors => uriControl.errors;

  Map<String, Object>? get isJoinRightNowErrors => isJoinRightNowControl.errors;

  Map<String, Object>? get startAtErrors => startAtControl.errors;

  Map<String, Object>? get endAtErrors => endAtControl.errors;

  Map<String, Object>? get descriptionErrors => descriptionControl.errors;

  void get titleFocus => form.focus(titleControlPath());

  void get uriFocus => form.focus(uriControlPath());

  void get isJoinRightNowFocus => form.focus(isJoinRightNowControlPath());

  void get startAtFocus => form.focus(startAtControlPath());

  void get endAtFocus => form.focus(endAtControlPath());

  void get descriptionFocus => form.focus(descriptionControlPath());

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void titleRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsTitle) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          titleControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            titleControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void uriRemove({bool updateParent = true, bool emitEvent = true}) {
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

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void isJoinRightNowRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsIsJoinRightNow) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          isJoinRightNowControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            isJoinRightNowControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void startAtRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsStartAt) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          startAtControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            startAtControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void endAtRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsEndAt) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          endAtControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            endAtControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
    'Generator completely wraps the form so manual fields removal could lead to unexpected crashes',
  )
  void descriptionRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsDescription) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          descriptionControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            descriptionControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void titleValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void uriValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    uriControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void isJoinRightNowValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isJoinRightNowControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void startAtValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startAtControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void endAtValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endAtControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void descriptionValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void titleValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void uriValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    uriControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void isJoinRightNowValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isJoinRightNowControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void startAtValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startAtControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void endAtValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endAtControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void descriptionValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void titleValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => titleControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void uriValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => uriControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void isJoinRightNowValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => isJoinRightNowControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void startAtValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => startAtControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void endAtValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => endAtControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void descriptionValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => descriptionControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;

  FormControl<String> get uriControl =>
      form.control(uriControlPath()) as FormControl<String>;

  FormControl<bool> get isJoinRightNowControl =>
      form.control(isJoinRightNowControlPath()) as FormControl<bool>;

  FormControl<DateTime> get startAtControl =>
      form.control(startAtControlPath()) as FormControl<DateTime>;

  FormControl<DateTime> get endAtControl =>
      form.control(endAtControlPath()) as FormControl<DateTime>;

  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;

  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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

  void isJoinRightNowSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isJoinRightNowControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isJoinRightNowControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void startAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      startAtControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      startAtControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void endAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      endAtControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      endAtControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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

  @override
  MeetingScheduleForm get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logMeetingScheduleFormForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return MeetingScheduleForm(
      title: _titleValue,
      uri: _uriValue,
      isJoinRightNow: _isJoinRightNowValue,
      startAt: _startAtValue,
      endAt: _endAtValue,
      description: _descriptionValue,
    );
  }

  @override
  MeetingScheduleForm get rawModel {
    return MeetingScheduleForm(
      title: _titleRawValue,
      uri: _uriRawValue,
      isJoinRightNow: _isJoinRightNowRawValue,
      startAt: _startAtRawValue,
      endAt: _endAtRawValue,
      description: _descriptionRawValue,
    );
  }

  @override
  void toggleDisabled({bool updateParent = true, bool emitEvent = true}) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
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
  bool equalsTo(MeetingScheduleForm? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      MeetingScheduleFormForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(MeetingScheduleForm model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logMeetingScheduleFormForm.info('Errors');
      _logMeetingScheduleFormForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    MeetingScheduleForm? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => form.updateValue(
    MeetingScheduleFormForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void reset({
    MeetingScheduleForm? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) => form.reset(
    value: value != null ? formElements(value).rawValue : null,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(MeetingScheduleForm? meetingScheduleForm) =>
      FormGroup(
        {
          titleControlName: FormControl<String>(
            value: meetingScheduleForm?.title,
            validators: AppValidation.meetingTitle,
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
          uriControlName: FormControl<String>(
            value: meetingScheduleForm?.uri,
            validators: AppValidation.meetingUri,
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
          isJoinRightNowControlName: FormControl<bool>(
            value: meetingScheduleForm?.isJoinRightNow,
            validators: AppValidation.meetingBotJoinTiming,
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
          startAtControlName: FormControl<DateTime>(
            value: meetingScheduleForm?.startAt,
            validators: AppValidation.meetingStartAt,
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
          endAtControlName: FormControl<DateTime>(
            value: meetingScheduleForm?.endAt,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
          descriptionControlName: FormControl<String>(
            value: meetingScheduleForm?.description,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false,
          ),
        },
        validators: [
          _BeforeEndAtValidator(fieldNameEnum: FieldNameEnum.meetingEndAt),
          _RequiredStartAtValidator(
            fieldNameEnum: FieldNameEnum.meetingStartAt,
          ),
        ],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
      );
}

class ReactiveMeetingScheduleFormFormArrayBuilder<
  ReactiveMeetingScheduleFormFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveMeetingScheduleFormFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveMeetingScheduleFormFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMeetingScheduleFormFormArrayBuilderT>? Function(
    MeetingScheduleFormForm formModel,
  )?
  control;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    MeetingScheduleFormForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    FormControl<ReactiveMeetingScheduleFormFormArrayBuilderT> control,
    ReactiveMeetingScheduleFormFormArrayBuilderT? item,
    MeetingScheduleFormForm formModel,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveMeetingScheduleFormFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingScheduleFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<
      ReactiveMeetingScheduleFormFormArrayBuilderT
    >(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder(context, itemList, formModel)
          : null,
      itemBuilder: (context, i, control, item) =>
          itemBuilder(context, i, control, item, formModel),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveMeetingScheduleFormFormArrayBuilder2<
  ReactiveMeetingScheduleFormFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveMeetingScheduleFormFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveMeetingScheduleFormFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMeetingScheduleFormFormArrayBuilderT>? Function(
    MeetingScheduleFormForm formModel,
  )?
  control;

  final Widget Function(
    ({
      BuildContext context,
      List<Widget> itemList,
      MeetingScheduleFormForm formModel,
    })
    params,
  )?
  builder;

  final Widget Function(
    ({
      BuildContext context,
      int i,
      FormControl<ReactiveMeetingScheduleFormFormArrayBuilderT> control,
      ReactiveMeetingScheduleFormFormArrayBuilderT? item,
      MeetingScheduleFormForm formModel,
    })
    params,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveMeetingScheduleFormFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingScheduleFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<
      ReactiveMeetingScheduleFormFormArrayBuilderT
    >(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder((
              context: context,
              itemList: itemList,
              formModel: formModel,
            ))
          : null,
      itemBuilder: (context, i, control, item) => itemBuilder((
        context: context,
        i: i,
        control: control,
        item: item,
        formModel: formModel,
      )),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveMeetingScheduleFormFormFormGroupArrayBuilder<
  ReactiveMeetingScheduleFormFormFormGroupArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveMeetingScheduleFormFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  }) : assert(
         extended != null || getExtended != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveMeetingScheduleFormFormFormGroupArrayBuilderT>
  >?
  extended;

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveMeetingScheduleFormFormFormGroupArrayBuilderT>
  >
  Function(MeetingScheduleFormForm formModel)?
  getExtended;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    MeetingScheduleFormForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    ReactiveMeetingScheduleFormFormFormGroupArrayBuilderT? item,
    MeetingScheduleFormForm formModel,
  )
  itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMeetingScheduleFormForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ??
                    <ReactiveMeetingScheduleFormFormFormGroupArrayBuilderT>[])
                .asMap()
                .map(
                  (i, item) =>
                      MapEntry(i, itemBuilder(context, i, item, formModel)),
                )
                .values
                .toList();

        return builder?.call(context, itemList, formModel) ??
            Column(children: itemList);
      },
    );
  }
}
