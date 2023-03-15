import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:route_master_sample/app_setup_widget.dart';
import 'package:route_master_sample/authentication/bloc/authentication_bloc.dart';
import 'package:route_master_sample/authentication/bloc/authentication_status.dart';
import 'package:route_master_sample/authentication/first_auth/first_auth_page.dart';
import 'package:route_master_sample/authentication/second_auth/second_auth_page.dart';
import 'package:route_master_sample/home/home_page.dart';
import 'package:routemaster/routemaster.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<AuthenticationBloc>(
        create: (context) => GetIt.I.get<AuthenticationBloc>(),
        child: Builder(
          builder: (context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              // Replacing of RouteMap's
              final routeMap = state.status == AuthenticationStatus.unauthenticated
                  ? unauthenticatedRouteMap
                  : _authenticatedRouteMap();
              final routerDelegate = RoutemasterDelegate(routesBuilder: (context) => routeMap);

              return AppSetupWidget(key: ObjectKey(routeMap), routerDelegate: routerDelegate);
            },
          ),
        ),
      );
}

final unauthenticatedRouteMap = RouteMap(
  routes: {
    '/': (_) => const Redirect('/first_auth_page'),
    '/first_auth_page': (_) => const MaterialPage(child: FirstAuthPage()),
    '/second_auth_page': (_) => const MaterialPage(child: SecondAuthPage()),
  },
);

RouteMap _authenticatedRouteMap() => RouteMap(
      onUnknownRoute: (route) => const Redirect('/'),
      routes: {
        '/': (_) => const Redirect('/home'),
        '/home': (_) => const MaterialPage(child: HomePage()),
      },
    );
