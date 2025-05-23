import 'package:flora_care/features/authentication/data/data_providers/implementations/auth_data_provider_impl.dart';
import 'package:flora_care/features/authentication/data/mappers/auth_docs_response_mapper.dart';
import 'package:flora_care/features/authentication/domain/entities/auth_docs_response_entity.dart';
import 'package:flora_care/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataProvider dataProvider;

  AuthRepositoryImpl(this.dataProvider);

  @override
  Future<AuthDocsResponseEntity> login({
    required String email,
    required String password,
  }) async {
    final dto = await dataProvider.login(email: email, password: password);
    return AuthDocsResponseMapper.fromDto(dto: dto);
  }

  @override
  Future<void> register({
    required String username,
    required String email,
    required String password,
  }) {
    return dataProvider.register(
      username: username,
      email: email,
      password: password,
    );
  }

  @override
  AuthDocsResponseEntity? getCurrentUser() {
    final dto = dataProvider.getCurrentUser();
    if (dto == null) return null;
    return AuthDocsResponseMapper.fromDto(dto: dto);
  }

  @override
  bool get isAuthenticated => dataProvider.isAuthenticated;

  @override
  void logout() {
    dataProvider.logout();
  }
}
