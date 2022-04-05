import 'package:flutter/material.dart';

class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
}

class QuoteCard extends StatelessWidget {
  final Quote quotes;

  //function as parameter
  final Function(Quote _quote) delete;

  const QuoteCard({Key? key, required this.quotes, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quotes.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              quotes.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10.0,
              color: Colors.grey[400],
            ),
            TextButton.icon(
              onPressed: () {
                delete(quotes);
              },
              icon: const Icon(Icons.delete),
              label: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
