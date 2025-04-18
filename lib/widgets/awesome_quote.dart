import 'package:flutter/material.dart';
import 'package:tut_app/component/quote_card.dart';
import 'package:tut_app/quote.dart';

class AwesomeQuote extends StatefulWidget {
  @override
  State<AwesomeQuote> createState() => _AwesomeQuoteState();
}

class _AwesomeQuoteState extends State<AwesomeQuote> {
  List<Quote> quotes = [
    Quote(text: 'plahplahplahplahplahplah', author: 'Who?'),
    Quote(text: 'ojjjjjjjjjjjjjjjjj', author: 'Who?'),
    Quote(text: 'gjjjjjjjjjjjj', author: 'Who?'),
    Quote(text: 'vcccccccccccccccc', author: 'Who?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quote', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote, delete: (){
          setState(() {
            quotes.remove(quote);
          });
        })).toList(),
      ),
    );
  }
}
