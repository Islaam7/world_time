import 'package:flutter/material.dart';
import 'package:tut_app/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text(quote.text),
            SizedBox(
              height: 6.0,
            ),
            Text(quote.author),
            SizedBox(height: 6.0,),
            IconButton(onPressed: (){
              delete();
            }, icon: Icon(Icons.delete, color: Colors.red,))
          ],
        ),
      ),
    );
  }

}