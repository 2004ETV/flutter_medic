import 'package:flutter/material.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';

class PinButton extends StatelessWidget {
  const PinButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(
          Size(80, 80),
        ),
        shape: const MaterialStatePropertyAll(
          CircleBorder(),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.blueCrayola;
          }

          return AppColors.cultured;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.white;
          }

          return Colors.black;
        }),
        animationDuration: Duration.zero,
      ),
      child: Text(title),
    );
  }
}
