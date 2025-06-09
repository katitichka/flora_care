import 'package:flora_care/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flora_care/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthProvider extends StatelessWidget {
  final Widget child;
  final AuthRepository authRepository;

  const AuthProvider({
    required this.child,
    required this.authRepository,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(authRepository: authRepository)
        ..add(const AuthEvent.checkAuth()),
      child: child,
    );
  }
}