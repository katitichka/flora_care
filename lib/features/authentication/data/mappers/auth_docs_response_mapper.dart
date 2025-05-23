import 'package:flora_care/features/authentication/domain/entities/auth_docs_response_entity.dart';
import 'package:flora_care/features/authentication/data/DTOs/auth_docs_response_dto.dart';

abstract class AuthDocsResponseMapper {
  static AuthDocsResponseEntity fromDto({required AuthDocsResponseDto dto}) {
    return AuthDocsResponseEntity(
      id: dto.id,
      email: dto.email,
      verified: dto.verified,
      );
  }
}
