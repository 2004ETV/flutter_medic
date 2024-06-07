import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.model,
    required this.onDelete,
    required this.onIncrement,
    required this.onDecrement,
  });

  final CartEntity model;
  final VoidCallback? onDelete;
  final GestureTapCallback? onIncrement;
  final GestureTapCallback? onDecrement;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  model.title,
                  style: AppTypography.sfProDisplayMedium16,
                ),
              ),
              const Gap(8),
              IconButton(
                onPressed: onDelete,
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ],
          ).paddingOnly(left: 16),
          const Gap(16),
          Row(
            children: [
              Text(
                '${model.price} ₽',
                style: AppTypography.sfProDisplaySemiBold17,
              ),
              const Spacer(),
              Text(
                '${model.patientCount} пациент',
                style: AppTypography.sfProDisplayRegular15,
              ),
              const Gap(16),
              SizedBox(
                height: 32,
                child: Material(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.extraSmall,
                  ),
                  color: AppColors.cultured,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: onDecrement,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.tinySmall,
                        ),
                        child: Icon(
                          Icons.remove_rounded,
                          size: 20,
                          color: Colors.black.withOpacity(.4),
                        ),
                      ),
                      const VerticalDivider(),
                      InkWell(
                        onTap: onIncrement,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.tinySmall,
                        ),
                        child: Icon(
                          Icons.add_rounded,
                          size: 20,
                          color: Colors.black.withOpacity(.4),
                        ),
                      ),
                    ],
                  ).paddingAll(6),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 16),
        ],
      ).paddingOnly(bottom: 16),
    );
  }
}
