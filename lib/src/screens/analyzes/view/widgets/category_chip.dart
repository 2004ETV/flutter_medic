import 'package:flutter/material.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  final String label;

  final bool isSelected;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      side: BorderSide.none,
      selected: isSelected,
      backgroundColor: AppColors.cultured,
      selectedColor: AppColors.blueCrayola,
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      labelStyle: AppTypography.sfProDisplayMedium15.copyWith(
        color: isSelected ? Colors.white : Colors.black,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      label: Text(label),
      onSelected: onSelected,
    );
  }
}
