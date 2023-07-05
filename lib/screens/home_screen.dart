import 'package:flutter/material.dart';

import '../widgets/decoratedbox_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DecoratedBox() Widget'),
      ),
      body: const MyDecoratedBox(),
    );
  }
}
