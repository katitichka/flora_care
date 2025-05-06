import 'package:flora_care/features/users/data/DTOs/users_docs_response_dto.dart';
import 'package:flora_care/features/users/domain/entities/users_docs_response_entity.dart';

abstract class UsersDocsResponseMapper {
  static UsersDocsResponseEntity fromDto({required UsersDocsResponseDto dto}) {
    return UsersDocsResponseEntity(
      id: dto.id,
      created: dto.created,
      name: dto.name,
    );
  }
}
