import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:route_master_sample/authentication/bloc/authentication_status.dart';

part 'authentication_events.dart';

part 'authentication_state.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.unauthenticated()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) =>
      event.status == AuthenticationStatus.unauthenticated
          ? emit(const AuthenticationState.unauthenticated())
          : emit(const AuthenticationState.authenticated());
}
