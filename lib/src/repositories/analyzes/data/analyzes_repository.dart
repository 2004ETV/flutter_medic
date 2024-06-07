import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';

abstract interface class AnalyzesRepository {
  const AnalyzesRepository._();

  Future<List<AnalyzeDomain>> getAnalyzes({
    required String category,
  });

  Future<AnalyzeDomain> getAnalyzeById({
    required int id,
  });
}
