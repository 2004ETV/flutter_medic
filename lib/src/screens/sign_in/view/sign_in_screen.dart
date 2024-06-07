import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_elevated_button.dart';
import 'package:flutter_medic/src/common/widgets/primary_outlined_button.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class SignInScreen extends StatefulWidget implements AutoRouteWrapper {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        authController: GetIt.I.get<AuthController>(),
      ),
      child: this,
    );
  }
}

class _SignInScreenState extends State<SignInScreen> {
  late final GlobalKey<FormBuilderState> _formKey;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    _formKey = GlobalKey();
    super.initState();
  }

  void _onEmailChanged(String? email) {
    setState(() {
      _isButtonEnabled = email!.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60).safeArea(bottom: false),
            Text(
              '🤚 Добро пожаловать!'.hardcoded,
              style: AppTypography.sfProDisplayBold24,
            ).paddingSymmetric(horizontal: 20),
            const Gap(24),
            Text(
              'Войдите, чтобы пользоваться функциями приложения'.hardcoded,
              style: AppTypography.sfProDisplayRegular15,
            ).paddingSymmetric(horizontal: 20),
            const Gap(64),
            Text(
              'Вход по E-mail'.hardcoded,
              style: AppTypography.sfProDisplayRegular14.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).paddingSymmetric(horizontal: 20),
            const Gap(4),
            FormBuilderTextField(
              name: 'email',
              decoration: InputDecoration(
                hintText: 'example@mail.ru'.hardcoded,
              ),
              onChanged: _onEmailChanged,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.email(),
              ]),
            ).paddingSymmetric(horizontal: 20),
            const Gap(32),
            BlocConsumer<SignInBloc, SignInState>(
              listener: (context, state) {
                state.mapOrNull(
                  success: (state) =>
                      const EmailVerificationRoute().push(context),
                  error: (state) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.error.toString(),
                      ),
                    ),
                  ),
                );
              },
              builder: (context, state) {
                return PrimaryElevatedButton(
                  onPressed: _isButtonEnabled
                      ? () {
                          if (_formKey.currentState?.saveAndValidate() ??
                              false) {
                            context.read<SignInBloc>().add(
                                  SignInEvent.sendCode(
                                    email:
                                        _formKey.currentState?.value['email'],
                                  ),
                                );
                          }
                        }
                      : null,
                  isLoading: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  child: Text('Далее'.hardcoded),
                );
              },
            ).paddingSymmetric(horizontal: 20),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Или войдите с помощью'.hardcoded,
                  style: AppTypography.sfProDisplayRegular15.copyWith(
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ],
            ).paddingSymmetric(horizontal: 20),
            const Gap(16),
            PrimaryOutlinedButton(
              onPressed: () {},
              title: 'Войти с Яндекс'.hardcoded,
            ).paddingSymmetric(horizontal: 20),
            const SizedBox(height: 24).safeArea(top: false),
          ],
        ),
      ),
    );
  }
}
