import 'package:flutter/material.dart';

import '../widgets/mediaquery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery()'),
      ),
      body: const MyMediaQuery(),
    );
  }
}
