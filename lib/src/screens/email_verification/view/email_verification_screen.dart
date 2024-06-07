import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/auth/controllers/auth_controller.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_filled_back_button.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/screens/email_verification/bloc/email_verification_bloc.dart';
import 'package:flutter_medic/src/screens/email_verification/view/widgets/pin_code_field.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class EmailVerificationScreen extends StatefulWidget
    implements AutoRouteWrapper {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<EmailVerificationBloc>(
      create: (context) => EmailVerificationBloc(
        authController: GetIt.I.get<AuthController>(),
      ),
      child: this,
    );
  }
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  late final TextEditingController _otpController;

  Future<void> _onCompleted(String? code) async {
    if (code == null) {
      return;
    }

    context.read<EmailVerificationBloc>().add(
          EmailVerificationEvent.checkCode(code: code),
        );
  }

  @override
  void initState() {
    _otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ).safeArea(bottom: false),
          Row(
            children: [
              PrimaryFilledBackButton(
                onTap: context.router.maybePop,
              ),
            ],
          ).paddingSymmetric(horizontal: 20),
          const Spacer(),
          Column(
            children: [
              Text(
                'Введите код из E-mail'.hardcoded,
                style: AppTypography.sfProDisplaySemiBold17,
                textAlign: TextAlign.center,
              ),
              const Gap(24),
              BlocListener<EmailVerificationBloc, EmailVerificationState>(
                listener: (context, state) {
                  state.mapOrNull(
                    success: (state) => context.router.popAndPush(
                      const PinRoute(),
                    ),
                    error: (state) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.error.toString(),
                        ),
                      ),
                    ),
                  );
                },
                child: PinCodeField(
                  controller: _otpController,
                  onCompleted: _onCompleted,
                ),
              ),
              const Gap(16),
              Text(
                'Отправить код повторно можно будет через 59 секунд'.hardcoded,
                style: AppTypography.sfProDisplayRegular15.copyWith(
                  color: Colors.black.withOpacity(.4),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ).paddingSymmetric(horizontal: 70),
          const Spacer(),
          const SizedBox(height: 24).safeArea(top: false),
        ],
      ),
    );
  }
}
