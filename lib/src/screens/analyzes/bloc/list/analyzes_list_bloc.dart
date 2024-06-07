import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';

part 'analyzes_list_event.dart';
part 'analyzes_list_state.dart';

class AnalyzesListBloc extends Bloc<AnalyzesListEvent, AnalyzesListState> {
  AnalyzesListBloc({required AnalyzesRepository analyzesRepository})
      : _analyzesRepository = analyzesRepository,
        super(const AnalyzesListInitialState()) {
    on<LoadAnalyzesEvent>(_loadAnalyzes);
    on<FilterAnalyzesEvent>(_filterAnalyzes);
  }

  Future<void> _loadAnalyzes(
    LoadAnalyzesEvent event,
    Emitter<AnalyzesListState> emit,
  ) async {
    try {
      if (state is! AnalyzesListLoadedState) {
        emit(const AnalyzesListLoadingState());
      }

      final result = await _analyzesRepository.getAnalyzes(
        category: event.category,
      );

      emit(AnalyzesListLoadedState(analyzes: result));
    } catch (e) {
      emit(AnalyzesListErrorState(error: e));
    } finally {
      event.completer?.complete();
    }
  }

  Future<void> _filterAnalyzes(
    FilterAnalyzesEvent event,
    Emitter<AnalyzesListState> emit,
  ) async {
    try {
      emit(const AnalyzesListLoadingState());

      final result = await _analyzesRepository.getAnalyzes(
        category: event.category,
      );

      emit(AnalyzesListLoadedState(analyzes: result));
    } catch (e) {
      emit(AnalyzesListErrorState(error: e));
    }
  }

  final AnalyzesRepository _analyzesRepository;
}
