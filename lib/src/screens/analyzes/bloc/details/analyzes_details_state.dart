part of 'analyzes_details_bloc.dart';

@freezed
class AnalyzesDetailsState with _$AnalyzesDetailsState {
  const factory AnalyzesDetailsState.initial() = _Initial;

  const factory AnalyzesDetailsState.loading() = _Loading;

  const factory AnalyzesDetailsState.loaded({
    required AnalyzeDomain analyze,
  }) = _Loaded;

  const factory AnalyzesDetailsState.error({
    required Object? error,
  }) = _Error;
}
