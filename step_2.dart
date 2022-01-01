import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Step 2.2: Set MaterialApp's home property to Names widget.
    return MaterialApp(
      home: Names(),
    );
  }
}

// Step 2.1: Create Names StatefulWidget.
class Names extends StatefulWidget {
  @override
  _NamesState createState() => _NamesState();
}

// Note that if an identifier starts with an underscore _, 
// it’s private to its library.
class _NamesState extends State<Names> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}