import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_master_sample/authentication/bloc/authentication_bloc.dart';
import 'package:route_master_sample/authentication/bloc/authentication_status.dart';

class SecondAuthPage extends StatelessWidget {
  const SecondAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.yellowAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SecondAuthPage', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 16),
            MaterialButton(
              child: const Text('Sign In', style: TextStyle(fontSize: 20)),
              onPressed: () => context
                  .read<AuthenticationBloc>()
                  .add(AuthenticationStatusChanged(AuthenticationStatus.authenticated)),
            ),
          ],
        ),
      );
}
