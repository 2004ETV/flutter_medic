import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';
import 'package:oat_api/oat_api.dart';

extension AnalyzeDetailsDomainMapper on ControllersGetCatalogItemByIdResponse {
  AnalyzeDomain toDomain() {
    return AnalyzeDomain(
      id: id!,
      category: category!,
      createdAt: DateTime.parse(createdAt!),
      price: price!,
      description: description!,
      name: name!,
      bio: bio!,
      preparation: preparation!,
      timeResult: timeRes!,
    );
  }
}
