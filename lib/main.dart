import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: MyQuotes(),
    ));

class MyQuotes extends StatefulWidget {
  @override
  _MyQuotesState createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {
  List<String> quotes = [
    'It took me 17 years of hard work to become an overnight success',
    'Life is built with blocks of failures',
    'The fastest rider uses the breaks the most'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
