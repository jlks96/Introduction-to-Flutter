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
  // Step 4.1: Create a set to store saved names.
  final _savedNames = <String>{};
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

  List<Widget> _buildTiles() {
    return _availableNames.map(
      (name) {
        final saved = _savedNames.contains(name);
        return ListTile(
          title: Text(name, style: const TextStyle(fontSize: 18.0)),
          // Step 4.2: Add favorite icons for each name tile.
          trailing: Icon(
            saved ? Icons.favorite : Icons.favorite_border,
            color: saved ? Colors.red : null,
          ),
          // Step 4.3: Add save action interactivity.
          onTap: () => setState(
            () => saved ? _savedNames.remove(name) : _savedNames.add(name),
          ),
        );
      },
    ).toList();
  }
}
