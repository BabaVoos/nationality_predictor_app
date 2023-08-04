import 'package:flutter/material.dart';

class NationalityButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const NationalityButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(
      context,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.primaryColorDark,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style:  TextStyle(
            color: theme.primaryColorLight,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
