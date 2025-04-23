import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveTextFieldWithScroll<T> extends HookWidget {
  const ReactiveTextFieldWithScroll({
    required this.formControl,
    required this.decoration,
    super.key,
    this.textInputAction,
    this.keyboardType,
    this.obscureText = false,
    this.onSubmitted,
  });
  final FormControl<T>? formControl;
  final InputDecoration decoration;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ReactiveFormFieldCallback<T>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final globalKey = useMemoized(() => GlobalKey());
    useEffect(
      () {
        void focusListener() async {
          if (focusNode.hasFocus) {
            if (globalKey.currentContext == null) {
              return;
            }
            await Future.delayed(const Duration(milliseconds: 400)).then(
              (value) => Scrollable.ensureVisible(
                globalKey.currentContext!,
                duration: const Duration(milliseconds: 200),
                curve: Curves.decelerate,
              ),
            );
          }
        }

        focusNode.addListener(focusListener);
        return null;
      },
      [focusNode],
    );
    return ReactiveTextField<T>(
      key: globalKey,
      focusNode: focusNode,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      formControl: formControl,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      decoration: decoration,
      obscureText: obscureText,
      onSubmitted: onSubmitted,
    );
  }
}
