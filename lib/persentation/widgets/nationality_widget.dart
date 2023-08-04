import 'package:flutter/material.dart';
import 'package:nationality_prediction/constants/strings.dart';

class NationalityWidget extends StatelessWidget {
  final String name;

  const NationalityWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return Container(
      padding: const EdgeInsets.all(
        20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        border: Border.all(
          color: theme.primaryColorDark,
        ),
      ),
      child: Text(
        '${AppStrings.nameFieldLabel} : $name',
        style: TextStyle(
          fontSize: 30,
          color: theme.primaryColorDark,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
