import 'package:flutter/material.dart';
import 'package:nationality_prediction/constants/strings.dart';

class NationalityTextField extends StatelessWidget {
  final TextEditingController textEditingController;

  const NationalityTextField({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return TextFormField(
      controller: textEditingController,
      style: TextStyle(
        color: theme.primaryColorDark,
      ),
      cursorColor: theme.primaryColorDark,
      decoration: InputDecoration(
        labelText: AppStrings.nameFieldLabel,
        labelStyle: TextStyle(
          color: theme.primaryColorDark,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          borderSide: BorderSide(
            color: theme.primaryColorDark,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          borderSide: BorderSide(
            color: theme.primaryColorDark,
          ),
        ),
      ),
    );
  }
}
