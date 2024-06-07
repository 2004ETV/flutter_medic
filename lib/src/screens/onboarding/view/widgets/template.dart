import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/assets/assets.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:gap/gap.dart';

class OnboardingTemplate extends StatelessWidget {
  const OnboardingTemplate({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.pageIndex,
    required this.pagesCount,
    required this.onPressed,
  });

  final String title;
  final String description;
  final String image;
  final int pageIndex;
  final int pagesCount;
  final VoidCallback? onPressed;

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(6).safeArea(bottom: false),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: onPressed,
              child: Text(
                pageIndex < pagesCount - 1
                    ? 'Пропустить'.hardcoded
                    : 'Завершить'.hardcoded,
              ),
            ).paddingSymmetric(horizontal: 12),
            Image.asset(
              AppAssets.imagePlus,
              height: 164,
            ),
          ],
        ),
        const Gap(60),
        Text(
          title,
          style: AppTypography.sfProDisplaySemiBold20.copyWith(
            color: AppColors.vividMalachite,
          ),
        ),
        const Gap(30),
        Text(
          description,
          style: AppTypography.sfProDisplayRegular14.copyWith(
            color: Colors.black38,
          ),
          textAlign: TextAlign.center,
        ).paddingSymmetric(horizontal: 24),
        const Spacer(),
        Image.asset(
          image,
          height: 200,
        ),
        const Gap(24).safeArea(top: false),
      ],
    );
  }
}
