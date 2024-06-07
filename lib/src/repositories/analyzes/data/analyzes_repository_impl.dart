import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/mappers/analyze_details_domain_mapper.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/mappers/analyze_domain_mapper.dart';
import 'package:oat_api/oat_api.dart';

class AnalyzesRepositoryImpl implements AnalyzesRepository {
  const AnalyzesRepositoryImpl({
    required this.oatApi,
  });

  final OatApi oatApi;

  @override
  Future<List<AnalyzeDomain>> getAnalyzes({
    required String category,
  }) async {
    final result = await oatApi.getCatalogApi().catalogGet(
          category: category,
        );

    if (result.data == null) {
      return Future.error('Ошибка');
    }

    return result.data!.catalogItems!.map((p0) => p0.toDomain()).toList();
  }

  @override
  Future<AnalyzeDomain> getAnalyzeById({
    required int id,
  }) async {
    final result = await oatApi.getCatalogApi().catalogByIdGet(
          itemId: id,
        );

    return result.data!.toDomain();
  }
}
