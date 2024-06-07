import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/constants/storage_constants.dart';
import 'package:flutter_medic/src/repositories/storage/storage_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc({required StorageRepository storageRepository})
      : _storageRepository = storageRepository,
        super(const OnboardingState.initial()) {
    on<OnboardingEvent>((events, emit) async {
      await events.map(
        complete: (event) => _completeOnboarding(emit, event),
      );
    });
  }

  Future<void> _completeOnboarding(
    Emitter<OnboardingState> emit,
    _Complete event,
  ) async {
    emit(const OnboardingState.success());
    try {
      await _storageRepository.setBool(
        key: StorageConstants.isShowOnboarding,
        value: false,
      );
    } catch (e) {
      emit(OnboardingState.error(error: e));
    }
  }

  final StorageRepository _storageRepository;
}
