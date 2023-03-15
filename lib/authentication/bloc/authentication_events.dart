part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {}

class AuthenticationStatusChanged extends AuthenticationEvent {
  final AuthenticationStatus status;

  AuthenticationStatusChanged(this.status);
}
