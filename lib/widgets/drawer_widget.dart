import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return _drawerWithDrawerHeader();
  }

  Drawer _drawerWithDrawerHeader() {
    return Drawer(
      elevation: 8,
      backgroundColor: Colors.white.withOpacity(0.5),
      child: ListView(
        // padding: const EdgeInsets.only(left: 10),

        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: const Text('Partho Debnath'),
              accountEmail: const Text('parthodebnath28@gmail.com'),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://petapixel.com/assets/uploads/2022/12/what-is-unsplash-800x420.jpg',
                  // height: 100,
                  // width: 200,
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
                ),
              ),
              currentAccountPictureSize: const Size(80, 80),
              otherAccountsPictures: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://petapixel.com/assets/uploads/2022/12/what-is-unsplash-800x420.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ],
              otherAccountsPicturesSize: const Size(50, 50),
              onDetailsPressed: () {
                print('on Details Pressed');
              },
              // decoration: BoxDecoration(
              //   color: Theme.of(context).primaryColor,
              //   borderRadius: const BorderRadius.vertical(
              //     bottom: Radius.circular(10),
              //   ),
              //   border: Border.all(color: Colors.blue, width: 1),
              // ),
            ),
          ),
          ListTile(
            tileColor: Colors.white60,
            leading: const Icon(Icons.dashboard_customize),
            title: const Text('Dashboard'),
            iconColor: Colors.green,
            onTap: () {},
          ),
          const SizedBox(height: 8.0),
          ListTile(
            tileColor: Colors.white60,
            leading: const Icon(Icons.people_alt),
            title: const Text('Friends'),
            trailing: const Text('50'),
            iconColor: Colors.blue,
            onTap: () {},
          ),
          const SizedBox(height: 8.0),
          ListTile(
            tileColor: Colors.white60,
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            iconColor: Colors.red,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}