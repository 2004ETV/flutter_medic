part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = _Initial;

  const factory EmailVerificationState.loading() = _Loading;

  const factory EmailVerificationState.success() = _Success;

  const factory EmailVerificationState.error({
    required Object? error,
  }) = _Error;
}
