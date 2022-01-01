import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Names(),
    );
  }
}

class Names extends StatefulWidget {
  @override
  _NamesState createState() => _NamesState();
}

class _NamesState extends State<Names> {
  // Step 3.1: Define list of available names.
  // Note that this is declared as a private variable.
  final _availableNames = [
    'SwipeWire',
    'SecureSmarter',
    'Dwellsmith',
    'SalePush',
    'Formonix',
    'Brandiing',
    'Cloudrevel',
    'Seekingon',
    'Medicing',
    'Crowdstage',
    'Hiphonic',
    'QuickSpace',
    'MetConnect',
    'Rentoor',
    'Kiddily',
    'Jumpsync',
    'Conceptial',
    'VisionSwipe',
    'Tourish',
    'Drivemo',
  ];

  // Step 3.3: Update build() to return a ListView of names.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: _buildTiles(),
        ).toList(),
      ),
    );
  }

  // Step 3.2: Build tiles/rows of names.
  List<Widget> _buildTiles() {
    return _availableNames
        .map(
          (name) => ListTile(
            title: Text(
              name,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        )
        .toList();
  }
}
