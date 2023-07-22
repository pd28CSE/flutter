import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: buildFlexibleSpaceWithFlexibleSpaceBar(),
        backgroundColor: Colors.deepPurple,
        shadowColor: Colors.deepPurple,
        elevation: 8,
        forceMaterialTransparency: false,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.app_registration),
        // leadingWidth: 56,
        // primary: false,
        // titleSpacing: 100,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.green,
          fontSize: 25,
        ),
        centerTitle: false,
        // title: const Text('AppBar() Widget'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Container buildFlexibleSpaceWithContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.blue.shade200,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }

  FlexibleSpaceBar buildFlexibleSpaceWithFlexibleSpaceBar() {
    return FlexibleSpaceBar(
      title: const Text('FlexibleSpaceBar()'),
      centerTitle: true,
      background: buildFlexibleSpaceWithContainer(),
    );
  }
}
