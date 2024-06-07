import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyzes_details_bloc.freezed.dart';
part 'analyzes_details_event.dart';
part 'analyzes_details_state.dart';

class AnalyzesDetailsBloc
    extends Bloc<AnalyzesDetailsEvent, AnalyzesDetailsState> {
  AnalyzesDetailsBloc({
    required AnalyzesRepository analyzesRepository,
  })  : _analyzesRepository = analyzesRepository,
        super(const AnalyzesDetailsState.initial()) {
    on<AnalyzesDetailsEvent>((events, emit) async {
      await events.map(
        load: (event) => _loadAnalyze(event, emit),
      );
    });
  }

  Future<void> _loadAnalyze(
    _Load event,
    Emitter<AnalyzesDetailsState> emit,
  ) async {
    try {
      emit(const AnalyzesDetailsState.loading());

      final result = await _analyzesRepository.getAnalyzeById(id: event.id);

      emit(AnalyzesDetailsState.loaded(analyze: result));
    } catch (e) {
      emit(AnalyzesDetailsState.error(error: e));
    }
  }

  final AnalyzesRepository _analyzesRepository;
}
