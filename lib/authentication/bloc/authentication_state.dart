part of 'authentication_bloc.dart';

class AuthenticationState {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unauthenticated,
  });

  final AuthenticationStatus status;

  const AuthenticationState.unauthenticated() : this._(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState.authenticated() : this._(status: AuthenticationStatus.authenticated);
}
