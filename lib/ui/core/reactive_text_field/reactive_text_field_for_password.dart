import 'package:flutter/material.dart';
import 'package:koshiba_agent_app/core/themes/app_color.dart';
import 'package:koshiba_agent_app/ui/core/reactive_text_field/reactive_text_field_with_scroll.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveTextFieldForPassword<T> extends StatefulWidget {
  const ReactiveTextFieldForPassword({
    required this.formControl,
    required this.decoration,
    super.key,
    this.textInputAction,
    this.keyboardType,
    this.onSubmitted,
  });
  final FormControl<T>? formControl;
  final InputDecoration decoration;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final ReactiveFormFieldCallback<T>? onSubmitted;

  @override
  State<ReactiveTextFieldForPassword<T>> createState() =>
      _ReactiveTextFieldForPasswordState<T>();
}

class _ReactiveTextFieldForPasswordState<T>
    extends State<ReactiveTextFieldForPassword<T>> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) => ReactiveTextFieldWithScroll<T>(
        formControl: widget.formControl,
        onSubmitted: widget.onSubmitted,
        obscureText: !isVisible,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        decoration: widget.decoration.copyWith(
          suffixIcon: IconButton(
            icon: Icon(
              isVisible ? Icons.visibility_off : Icons.visibility,
              color: AppColor.gray50,
            ),
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
          ),
        ),
      );
}
