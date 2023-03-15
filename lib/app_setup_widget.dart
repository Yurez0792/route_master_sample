import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class AppSetupWidget extends StatelessWidget {
  const AppSetupWidget({
    Key? key,
    required this.routerDelegate,
  }) : super(key: key);

  final RouterDelegate<Object> routerDelegate;

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Route master sample',
        routeInformationParser: const RoutemasterParser(),
        routerDelegate: routerDelegate,
        builder: (context, widget) => widget ?? Container(),
      );
}
