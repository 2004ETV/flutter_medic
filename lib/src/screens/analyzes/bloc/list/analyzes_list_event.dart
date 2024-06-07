part of 'analyzes_list_bloc.dart';

sealed class AnalyzesListEvent extends Equatable {
  const AnalyzesListEvent();

  @override
  List<Object?> get props => [];
}

final class LoadAnalyzesEvent extends AnalyzesListEvent {
  const LoadAnalyzesEvent({
    required this.completer,
    required this.category,
  });

  final Completer? completer;
  final String category;

  @override
  List<Object?> get props => super.props..addAll([completer, category]);
}

final class FilterAnalyzesEvent extends AnalyzesListEvent {
  const FilterAnalyzesEvent({
    required this.category,
  });

  final String category;

  @override
  List<Object?> get props => super.props..add(category);
}
