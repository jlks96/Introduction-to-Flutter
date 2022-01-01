import 'package:flutter/material.dart';

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
        // Step 5.2: Add action button on app bar which navigates to saved names screen.
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              // Navigate to saved names screen when tapped.
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => SavedNames(_savedNames),
                ),
              );
            },
            tooltip: 'Saved Names',
          ),
        ],
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
          trailing: Icon(
            saved ? Icons.favorite : Icons.favorite_border,
            color: saved ? Colors.red : null,
          ),
          onTap: () => setState(
            () => saved ? _savedNames.remove(name) : _savedNames.add(name),
          ),
        );
      },
    ).toList();
  }
}

// Step 5.1: Create a new StatelessWidget for saved names screen.
class SavedNames extends StatelessWidget {
  // Note `this.savedNames` is a syntatic sugar for setting
  // `savedNames`.
  const SavedNames(this.savedNames);

  final Set<String> savedNames;

  @override
  Widget build(BuildContext context) {
    // Similar to how we build ListView in `_NamesState`.
    final tiles = savedNames.map(
      (word) => ListTile(
        title: Text(
          word,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Suggestions'),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: tiles,
        ).toList(),
      ),
    );
  }
}
