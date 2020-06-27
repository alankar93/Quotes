import "package:flutter/material.dart";
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: MyQuotes(),
    ));

class MyQuotes extends StatefulWidget {
  @override
  _MyQuotesState createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {
  List<Quote> quotes = [
    Quote(
        author: "Messi",
        text:
            "It took me 17 years of hard work to become an overnight success"),
    Quote(
      author: "Alankar",
      text: 'Life is built with the blocks of failures',
    ),
    Quote(
        author: "Fast edi", text: 'The fastest rider uses the breaks the most')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15.0,
              ),
            )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
