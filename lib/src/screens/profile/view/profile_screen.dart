import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_elevated_button.dart';
import 'package:flutter_medic/src/common/widgets/primary_outlined_button.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/screens/profile/view/widgets/user_image.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authController = GetIt.I.get<AuthController>();

    return Scaffold(
      body: FormBuilder(
        child: CustomScrollView(
          slivers: [
            const SizedBox(height: 16).sliverToBox.sliverSafeArea(
                  bottom: false,
                ),
            Text(
              'Карта пациента'.hardcoded,
              style: AppTypography.sfProDisplayBold24,
              textAlign: TextAlign.center,
            ).sliverToBox,
            const SliverGap(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserImage(
                  image:
                      'https://img.freepik.com/free-photo/front-view-man-suffering-'
                      'from-allergy_23-2149700497.jpg?size=626&ext=jpg&ga=GA1.1.'
                      '2116175301.1715212800&semt=ais_user',
                  onTap: () {}, //TODO: Add functionality
                ),
              ],
            ).sliverToBox,
            const SliverGap(8),
            Text(
              'Без карты пациента вы не сможете заказать анализы.'.hardcoded,
              style: AppTypography.sfProDisplayRegular14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            Text(
              'В картах пациентов будут храниться результаты '
                      'анализов вас и ваших близких.'
                  .hardcoded,
              style: AppTypography.sfProDisplayRegular14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(8),
            FormBuilderTextField(
              name: 'lastName',
              decoration: InputDecoration(hintText: 'Фамилия'.hardcoded),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            FormBuilderTextField(
              name: 'firstName',
              decoration: InputDecoration(hintText: 'Имя'.hardcoded),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            FormBuilderTextField(
              name: 'patronymicName',
              decoration: InputDecoration(hintText: 'Отчество'.hardcoded),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            FormBuilderDateTimePicker(
              name: 'birthDay',
              inputType: InputType.date,
              format: DateFormat.yMMMMd(),
              decoration: InputDecoration(hintText: 'Дата рождения'.hardcoded),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            FormBuilderDropdown(
              name: 'sex',
              decoration: InputDecoration(hintText: 'Дата рождения'.hardcoded),
              items: [
                DropdownMenuItem(
                  value: 'male',
                  child: Text('Мужчина'.hardcoded),
                ),
                DropdownMenuItem(
                  value: 'female',
                  child: Text('Женщина'.hardcoded),
                ),
              ],
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(24),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryElevatedButton(
                    onPressed: () {},
                    child: Text('Сохранить'.hardcoded),
                  ).paddingSymmetric(horizontal: 20),
                  const Gap(12),
                  PrimaryOutlinedButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                          'Вы действительно хотите выйти?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: context.maybePop,
                            child: const Text('Нет'),
                          ),
                          TextButton(
                            onPressed: () async {
                              if (!mounted) {
                                return;
                              }

                              await authController.logout();
                              await context.router.pushAndPopUntil(
                                const SignInRoute(),
                                predicate: (route) => false,
                              );
                            },
                            child: const Text('Да'),
                          ),
                        ],
                      ),
                    ),
                    title: 'Выйти',
                  ).paddingSymmetric(horizontal: 20),
                  const Gap(12).safeArea(top: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
