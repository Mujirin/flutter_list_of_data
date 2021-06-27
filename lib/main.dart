import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: "Jadid1", text: "yeas bla bla"),
    Quote(author: "Jadid2", text: "yeas bla bla"),
    Quote(author: "Jadid3", text: "yeas bla bla"),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),
    );
  }
}
