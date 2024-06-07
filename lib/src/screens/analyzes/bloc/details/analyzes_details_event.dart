part of 'analyzes_details_bloc.dart';

@freezed
class AnalyzesDetailsEvent with _$AnalyzesDetailsEvent {
  const factory AnalyzesDetailsEvent.load({
    required int id,
  }) = _Load;
}
