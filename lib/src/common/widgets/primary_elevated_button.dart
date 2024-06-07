import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      child: child.paddingAll(16),
    );
  }
}
