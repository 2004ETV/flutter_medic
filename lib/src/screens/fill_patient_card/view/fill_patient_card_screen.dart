import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_elevated_button.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:gap/gap.dart';

@RoutePage()
class FillPatientCardScreen extends StatefulWidget {
  const FillPatientCardScreen({super.key});

  @override
  State<FillPatientCardScreen> createState() => _FillPatientCardScreenState();
}

class _FillPatientCardScreenState extends State<FillPatientCardScreen> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            const SizedBox(height: 32)
                .sliverToBox
                .sliverSafeArea(bottom: false),
            Text(
              'Создание карты пациента'.hardcoded,
              style: AppTypography.sfProDisplayBold24,
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(16),
            Text(
              'Без карты пациента вы не сможете заказать анализы.'.hardcoded,
              style: AppTypography.sfProDisplayRegular14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(8),
            Text(
              'В картах пациентов будут храниться результаты анализов вас и ваших близких.'
                  .hardcoded,
              style: AppTypography.sfProDisplayRegular14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryElevatedButton(
                    onPressed: () => context.router.pushAndPopUntil(
                      const AnalyzesRoute(),
                      predicate: (route) => false,
                    ),
                    child: Text('Создать'),
                  ).paddingSymmetric(horizontal: 20),
                  Gap(12).safeArea(top: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
