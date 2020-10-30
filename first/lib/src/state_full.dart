/*import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class RandomWordsState extends StatefulWidget {
  @override
  _RandomWordsStateState createState() => _RandomWordsStateState();
}

class _RandomWordsStateState extends State<RandomWordsState> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: Center(
          //child: Text('Hello World'),   // Replace this text...
          child: Text(wordPair.asPascalCase,
          style: TextStyle(
            fontSize: 50,
            color: Colors.red,
            )
          ) , // With this text.
        ),
      ),
    );
  }
}/*