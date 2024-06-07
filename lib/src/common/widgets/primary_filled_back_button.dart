import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';

class PrimaryFilledBackButton extends StatelessWidget {
  const PrimaryFilledBackButton({
    super.key,
    required this.onTap,
  });

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppDimensions.extraSmall,
      ),
      child: Material(
        color: AppColors.cultured,
        child: InkWell(
          onTap: onTap,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Colors.black.withOpacity(.4),
          ).paddingAll(6),
        ),
      ),
    );
  }
}
