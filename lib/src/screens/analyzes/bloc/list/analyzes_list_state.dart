part of 'analyzes_list_bloc.dart';

sealed class AnalyzesListState extends Equatable {
  const AnalyzesListState();

  @override
  List<Object?> get props => [];
}

final class AnalyzesListInitialState extends AnalyzesListState {
  const AnalyzesListInitialState();
}

final class AnalyzesListLoadingState extends AnalyzesListState {
  const AnalyzesListLoadingState();
}

final class AnalyzesListLoadedState extends AnalyzesListState {
  const AnalyzesListLoadedState({
    required this.analyzes,
  });

  final List<AnalyzeDomain> analyzes;
}

final class AnalyzesListErrorState extends AnalyzesListState {
  const AnalyzesListErrorState({
    required this.error,
  });

  final Object? error;
}
