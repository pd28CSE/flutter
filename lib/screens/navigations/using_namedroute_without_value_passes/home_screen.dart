import 'package:flutter/material.dart';

import './screen_one.dart';
import './screen_two.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home-screen/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation using NamedRoutes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                _switchToScreenOne(context);
              },
              icon: const Icon(Icons.pages),
              label: const Text('Screen One'),
            ),
            const SizedBox(height: 5),
            ElevatedButton.icon(
              onPressed: () {
                _switchToScreenTwo(context);
              },
              icon: const Icon(Icons.pages),
              label: const Text('Screen Two'),
            )
          ],
        ),
      ),
    );
  }

  void _switchToScreenOne(BuildContext context) {
    Navigator.of(context).pushNamed(
      ScreenOne.routeName,
    );
  }

  void _switchToScreenTwo(BuildContext context) {
    Navigator.of(context).pushNamed(
      ScreenTwo.routeName,
    );
  }
}
