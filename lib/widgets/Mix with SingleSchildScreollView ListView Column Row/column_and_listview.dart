import 'package:flutter/material.dart';

class ColumnListView extends StatelessWidget {
  const ColumnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return _columnListView();
  }

  Column _columnListView() {
    return Column(
      children: <Widget>[
        for (int i = 1; i <= 5; i++)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Hello World $i'),
          ),
        ListView(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
          shrinkWrap: true,

          ///  shrinkWrap: true, is required when the ListView
          /// does have not any fixed size

          primary: false, // try to scroll in emulator

          /// primary: false, is required when the parent Widget of
          /// ListView has scrolling functionality. Example given
          /// this file : "singlechildscrollview_column_listview.dart"

          children: const <Widget>[
            Text('Hello World 51'),
            SizedBox(height: 10),
            Text('Hello World 52'),
            SizedBox(height: 10),
            Text('Hello World 53'),
            SizedBox(height: 10),
            Text('Hello World 54'),
            SizedBox(height: 10),
            Text('Hello World 55'),
            SizedBox(height: 10),
            Text('Hello World 56'),
            SizedBox(height: 10),
            Text('Hello World 57'),
          ],
        ),
        const SizedBox(height: 20),
        const Text('Hello World 1'),
        const SizedBox(height: 10),
        const Text('Hello World 2'),
        const SizedBox(height: 10),
        const Text('Hello World 3'),
        const SizedBox(height: 25),
        ListView(
          shrinkWrap: true,

          ///  shrinkWrap: true, is required when the ListView
          /// does have not any fixed size

          primary: true, // try to scroll in emulator

          /// primary: false, is required when the parent Widget of
          /// ListView has scrolling functionality. Example given
          /// this file : "singlechildscrollview_column_listview.dart"
          children: const <Widget>[
            Text(
              'Hello World 81',
              style: TextStyle(
                backgroundColor: Colors.black38,
              ),
            ),
            SizedBox(width: 10),
            SizedBox(width: 10),
            Text('Hello World 82'),
            SizedBox(width: 10),
            Text('Hello World 83'),
            SizedBox(width: 10),
            Text('Hello World 84'),
            SizedBox(width: 10),
            Text('Hello World 85'),
            SizedBox(width: 10),
            Text('Hello World 86'),
            SizedBox(width: 10),
            Text('Hello World 87'),
            SizedBox(width: 10),
            ListTile(
              title: Text('Title Hello World'),
              subtitle: Text('Subtitle'),
            )
          ],
        )
      ],
    );
  }

  Column _columnListViewOne() {
    return Column(
      children: <Widget>[
        for (int i = 1; i <= 10; i++)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Hello World $i'),
          ),
        ListView(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
          shrinkWrap: true,

          ///  shrinkWrap: true, is required when the ListView
          /// does have not any fixed size

          primary: false,

          /// primary: false, is required when the parent Widget of
          /// ListView has scrolling functionality. Example given
          /// this file : "singlechildscrollview_column_listview.dart"

          children: const <Widget>[
            Text('Hello World 51'),
            SizedBox(height: 10),
            Text('Hello World 52'),
            SizedBox(height: 10),
            Text('Hello World 53'),
            SizedBox(height: 10),
            Text('Hello World 54'),
            SizedBox(height: 10),
            Text('Hello World 55'),
            SizedBox(height: 10),
            Text('Hello World 56'),
            SizedBox(height: 10),
            Text('Hello World 57'),
          ],
        ),
        const SizedBox(height: 20),
        const Text('Hello World 1'),
        const SizedBox(height: 10),
        const Text('Hello World 2'),
        const SizedBox(height: 10),
        const Text('Hello World 3'),
        const SizedBox(height: 25),
        SizedBox(
          // Fixed size ListView
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: true,
            // shrinkWrap: true,
            children: const <Widget>[
              Text(
                'Hello World 81',
                style: TextStyle(
                  backgroundColor: Colors.black38,
                ),
              ),
              SizedBox(width: 10),
              SizedBox(width: 10),
              Text('Hello World 82'),
              SizedBox(width: 10),
              Text('Hello World 83'),
              SizedBox(width: 10),
              Text('Hello World 84'),
              SizedBox(width: 10),
              Text('Hello World 85'),
              SizedBox(width: 10),
              Text('Hello World 86'),
              SizedBox(width: 10),
              Text('Hello World 87'),
              SizedBox(width: 10),
              Text('Hello World 88'),
              SizedBox(width: 10),
              Text('Hello World 89'),
              SizedBox(width: 10),
              Text('Hello World 90'),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: ListTile(
                  title: Text('Title Hello World'),
                  subtitle: Text('Subtitle'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Column _columnListViewTwo() {
    return Column(
      children: <Widget>[
        for (int i = 1; i <= 10; i++)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Hello World $i'),
          ),
        ListView(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
          shrinkWrap: true,

          ///  shrinkWrap: true, is required when the ListView
          /// does have not any fixed size

          primary: true,

          /// primary: false, is required when the parent Widget of
          /// ListView has scrolling functionality. Example given
          /// this file : "singlechildscrollview_column_listview.dart"

          children: const <Widget>[
            Text('Hello World 51'),
            SizedBox(height: 10),
            Text('Hello World 52'),
            SizedBox(height: 10),
            Text('Hello World 53'),
            SizedBox(height: 10),
            Text('Hello World 54'),
            SizedBox(height: 10),
            Text('Hello World 55'),
            SizedBox(height: 10),
            Text('Hello World 56'),
            SizedBox(height: 10),
            Text('Hello World 57'),
          ],
        ),
        const SizedBox(height: 20),
        const Text('Hello World 1'),
        const SizedBox(height: 10),
        const Text('Hello World 2'),
        const SizedBox(height: 10),
        const Text('Hello World 3'),
        const SizedBox(height: 25),
        SizedBox(
          // Fixed size ListView
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: true,
            // shrinkWrap: true,
            children: const <Widget>[
              Text(
                'Hello World 81',
                style: TextStyle(
                  backgroundColor: Colors.black38,
                ),
              ),
              SizedBox(width: 10),
              SizedBox(width: 10),
              Text('Hello World 82'),
              SizedBox(width: 10),
              Text('Hello World 83'),
              SizedBox(width: 10),
              Text('Hello World 84'),
              SizedBox(width: 10),
              Text('Hello World 85'),
              SizedBox(width: 10),
              Text('Hello World 86'),
              SizedBox(width: 10),
              Text('Hello World 87'),
              SizedBox(width: 10),
              Text('Hello World 88'),
              SizedBox(width: 10),
              Text('Hello World 89'),
              SizedBox(width: 10),
              Text('Hello World 90'),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: ListTile(
                  title: Text('Title Hello World'),
                  subtitle: Text('Subtitle'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Column _columnFixedSizeListView() {
    return Column(
      children: <Widget>[
        for (int i = 1; i <= 10; i++)
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('Hello World $i'),
          ),
        Container(
          /// Fixed size ListView
          color: Colors.amber,
          height: 100,
          width: 300,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
            shrinkWrap: false,

            /// shrinkWrap: true, is required when the ListView
            /// does have not any fixed size

            primary: true,
            children: const <Widget>[
              Text('Hello World 51'),
              SizedBox(height: 10),
              Text('Hello World 52'),
              SizedBox(height: 10),
              Text('Hello World 53'),
              SizedBox(height: 10),
              Text('Hello World 54'),
              SizedBox(height: 10),
              Text('Hello World 55'),
              SizedBox(height: 10),
              Text('Hello World 56'),
              SizedBox(height: 10),
              Text('Hello World 57'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text('Hello World 1'),
        const SizedBox(height: 10),
        const Text('Hello World 2'),
        const SizedBox(height: 10),
        const Text('Hello World 3'),
        const SizedBox(height: 25),
        SizedBox(
          /// Fixed size ListView
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: true,
            shrinkWrap: false,

            /// shrinkWrap: true, is required when the ListView does
            /// have not any fixed size

            children: const <Widget>[
              Text(
                'Hello World 81',
                style: TextStyle(
                  backgroundColor: Colors.black38,
                ),
              ),
              SizedBox(width: 10),
              SizedBox(width: 10),
              Text('Hello World 82'),
              SizedBox(width: 10),
              Text('Hello World 83'),
              SizedBox(width: 10),
              Text('Hello World 84'),
              SizedBox(width: 10),
              Text('Hello World 85'),
              SizedBox(width: 10),
              Text('Hello World 86'),
              SizedBox(width: 10),
              Text('Hello World 87'),
              SizedBox(width: 10),
              Text('Hello World 88'),
              SizedBox(width: 10),
              Text('Hello World 89'),
              SizedBox(width: 10),
              Text('Hello World 90'),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: ListTile(
                  title: Text('Title Hello World'),
                  subtitle: Text('Subtitle'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}