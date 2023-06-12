import 'package:flutter/material.dart';

class MyBottomNavigationBarScreen extends StatefulWidget {
  const MyBottomNavigationBarScreen({super.key});

  @override
  State<MyBottomNavigationBarScreen> createState() =>
      _MyBottomNavigationBarScreenState();
}

class _MyBottomNavigationBarScreenState
    extends State<MyBottomNavigationBarScreen> {
  final List<Map<String, String>> _widgets = const [
    {'title': 'Home'},
    {'title': 'Favourite'},
    {'title': 'Search'},
    {'title': 'Setting'}
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_widgets[_currentIndex]['title'] as String),
        ),
        body: TabBarView(
          children: <Widget>[
            const Center(child: Text('Home')),
            const Center(child: Text('Favourite')),
            Center(
              child: Column(
                children: <Widget>[
                  const Text('Search'),
                  MyButton(
                    index: 0,
                    text: 'Go to Home',
                    onPress: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Center(child: Text('Setting')),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.amber,
          splashBorderRadius: BorderRadius.circular(15),
          padding: const EdgeInsets.all(5.0),
          // indicatorSize: TabBarIndicatorSize.tab,
          onTap: (int index) {
            print('Current Index: $index');
            setState(() {
              _currentIndex = index;
            });
          },
          isScrollable: false,
          indicator: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
            backgroundBlendMode: BlendMode.colorBurn,

            // gradient: LinearGradient(
            //   colors: [Colors.green, Colors.green.shade100],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),

            // image: const DecorationImage(
            //   fit: BoxFit.scaleDown,
            //   image: AssetImage('images/rain-light.jpg'),
            // ),
          ),
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              child: Text('Home'),
            ),
            Tab(
              icon: Icon(Icons.favorite_border),
              child: Text('Favorite'),
            ),
            Tab(
              icon: Icon(Icons.search),
              child: Text('Search'),
            ),
            Tab(
              icon: Icon(Icons.settings),
              child: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final int index;
  const MyButton({
    super.key,
    required this.index,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPress();
        DefaultTabController.of(context).animateTo(index);
      },
      child: Text(text),
    );
  }
}