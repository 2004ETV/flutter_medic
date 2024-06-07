import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/screens/pin/view/widgets/pin_button.dart';
import 'package:gap/gap.dart';

@RoutePage()
class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final pin = StringBuffer();

  void _enterPinChar(int char) {
    setState(() {
      pin.write(char);
    });

    if (pin.length == 4) {
      const FillPatientCardRoute().push(context);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox().safeArea(
            bottom: false,
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () => const FillPatientCardRoute().push(context),
                child: Text('Пропустить'.hardcoded),
              ),
            ],
          ).paddingSymmetric(horizontal: 24),
          const Gap(40),
          Text(
            'Создайте пароль'.hardcoded,
            textAlign: TextAlign.center,
            style: AppTypography.sfProDisplayBold24,
          ),
          const Gap(16),
          Text(
            'Для защиты ваших персональных данных'.hardcoded,
            textAlign: TextAlign.center,
            style: AppTypography.sfProDisplayRegular15,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: AppColors.blueCrayola,
                    ),
                  ),
                  color: pin.length >= 1 ? AppColors.blueCrayola : Colors.white,
                ),
              ),
              const Gap(12),
              Container(
                width: 16,
                height: 16,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: AppColors.blueCrayola,
                    ),
                  ),
                  color: pin.length >= 2 ? AppColors.blueCrayola : Colors.white,
                ),
              ),
              const Gap(12),
              Container(
                width: 16,
                height: 16,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: AppColors.blueCrayola,
                    ),
                  ),
                  color: pin.length >= 3 ? AppColors.blueCrayola : Colors.white,
                ),
              ),
              const Gap(12),
              Container(
                width: 16,
                height: 16,
                decoration: ShapeDecoration(
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: AppColors.blueCrayola,
                    ),
                  ),
                  color: pin.length >= 4 ? AppColors.blueCrayola : Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinButton(
                onPressed: () => _enterPinChar(1),
                title: '1',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(2),
                title: '2',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(3),
                title: '3',
              ),
            ],
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinButton(
                onPressed: () => _enterPinChar(4),
                title: '4',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(5),
                title: '5',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(6),
                title: '6',
              ),
            ],
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinButton(
                onPressed: () => _enterPinChar(7),
                title: '7',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(8),
                title: '8',
              ),
              const Gap(24),
              PinButton(
                onPressed: () => _enterPinChar(9),
                title: '9',
              ),
            ],
          ),
          const Gap(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PinButton(
                onPressed: () => _enterPinChar(0),
                title: '0',
              ),
            ],
          ),
          const SizedBox(height: 12).safeArea(top: false),
        ],
      ),
    );
  }
}
