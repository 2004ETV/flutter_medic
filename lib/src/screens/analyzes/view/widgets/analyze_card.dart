import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/cart/cart_bloc.dart';
import 'package:gap/gap.dart';

class AnalyzeCard extends StatelessWidget {
  const AnalyzeCard({
    super.key,
    required this.onPressed,
    required this.onDelete,
    required this.onTap,
    required this.model,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onDelete;
  final GestureTapCallback? onTap;
  final AnalyzeDomain model;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black.withOpacity(.12),
        ),
        borderRadius: BorderRadius.circular(
          AppDimensions.medium,
        ),
      ),
      color: Colors.white,
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(
          AppDimensions.medium,
        ),
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.name,
              style: AppTypography.sfProDisplayMedium16,
            ),
            const Gap(16),
            Text(
              '${DateTime.now().add(const Duration(minutes: 20)).minute} минут'
                  .hardcoded,
              style: AppTypography.sfProDisplaySemiBold14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ),
            const Gap(4),
            Row(
              children: [
                Text(
                  model.price,
                  style: AppTypography.sfProDisplaySemiBold17,
                ),
                const Spacer(),
                SizedBox(
                  width: 130,
                  child: BlocBuilder<CartBloc, CartState>(
                    bloc: context.read<CartBloc>(),
                    builder: (context, state) {
                      final isSelected = state.maybeMap(
                        loaded: (state) => state.items
                            .where((element) => element.id == model.id)
                            .isNotEmpty,
                        orElse: () => false,
                      );

                      return ElevatedButton(
                        style: ButtonStyle(
                          textStyle: const MaterialStatePropertyAll(
                            AppTypography.sfProDisplaySemiBold16,
                          ),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: MaterialStatePropertyAll(
                            isSelected ? Colors.white : AppColors.blueCrayola,
                          ),
                          foregroundColor: MaterialStatePropertyAll(
                            isSelected ? AppColors.blueCrayola : Colors.white,
                          ),
                          side: MaterialStatePropertyAll(
                            isSelected
                                ? const BorderSide(color: AppColors.blueCrayola)
                                : null,
                          ),
                        ),
                        onPressed: isSelected ? onDelete : onPressed,
                        child: Text(
                          isSelected
                              ? 'Убрать'.hardcoded
                              : 'Добавить'.hardcoded,
                        ).paddingSymmetric(
                          vertical: 10,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ).paddingAll(16),
      ),
    );
  }
}
