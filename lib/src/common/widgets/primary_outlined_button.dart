import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(title).paddingAll(16),
    );
  }
}
