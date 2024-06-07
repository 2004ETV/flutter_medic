import 'package:equatable/equatable.dart';

class AnalyzeDomain extends Equatable {
  const AnalyzeDomain({
    required this.id,
    required this.category,
    required this.createdAt,
    required this.description,
    required this.price,
    required this.name,
    required this.bio,
    required this.preparation,
    required this.timeResult,
  });

  final int id;
  final String category;
  final DateTime createdAt;
  final String description;
  final String price;
  final String name;
  final String bio;
  final String preparation;
  final String timeResult;

  @override
  List<Object?> get props => [
        id,
        category,
        createdAt,
        description,
        name,
        bio,
        preparation,
        timeResult,
      ];
}
