import 'package:flutter/material.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    super.key,
    required this.controller,
    this.onCompleted,
  });

  final TextEditingController controller;
  final void Function(String?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      controller: controller,
      onCompleted: onCompleted,
      length: 4,
      autoFocus: true,
      backgroundColor: Colors.white,
      enableActiveFill: true,
      textStyle: AppTypography.sfProDisplayRegular20,
      cursorColor: Colors.black,
      pinTheme: PinTheme(
        fieldHeight: 48,
        fieldWidth: 48,
        shape: PinCodeFieldShape.box,
        borderWidth: 1,
        selectedBorderWidth: 1,
        activeBorderWidth: 1,
        inactiveBorderWidth: 1,
        activeFillColor: AppColors.cultured,
        selectedFillColor: AppColors.cultured,
        inactiveFillColor: AppColors.cultured,
        activeColor: Colors.black.withOpacity(.12),
        selectedColor: Colors.black.withOpacity(.12),
        inactiveColor: Colors.black.withOpacity(.12),
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
      ),
    );
  }
}
