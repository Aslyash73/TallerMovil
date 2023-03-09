import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? sufIcon;
  final bool? autofocus;
  final TextInputType? textType;
  final bool obcureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.sufIcon,
    this.autofocus,
    this.textType,
    this.obcureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      autofocus: autofocus ?? false,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      obscureText: obcureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return "Este campo es obligatorio";
        return value.length < 1 ? 'Minimo 1 letra porfavor' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: Icon(sufIcon)),
    );
  }
}
