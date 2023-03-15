import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class FirstAuthPage extends StatelessWidget {
  const FirstAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('FirstAuthPage', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 16),
            MaterialButton(
                child: const Text('To second page', style: TextStyle(fontSize: 20)),
                onPressed: () => Routemaster.of(context).push('/second_auth_page')),
          ],
        ),
      );
}
