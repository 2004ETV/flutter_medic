part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  const factory OnboardingState.success() = _Success;

  const factory OnboardingState.error({
    required Object? error,
  }) = _Error;
}
