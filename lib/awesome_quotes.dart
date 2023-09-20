import 'package:flutter/material.dart';

import 'quote.dart';

void main() => runApp(const MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: "Love the life you live.Live the life you love.", author: "~Bob Marley"),
    Quote(text: "It's the imperfections that make things beautiful", author: "~Jenny Han"),
    Quote(text: 'Every villain is a hero in his own mind.', author: "~Tom Hiddleston"),
    Quote(text: "Yelling doesn't get your point across, it only makes it louder.", author: "~Grant Hill"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((e) => QuoteCard(
                  quotes: e,
                  delete: (Quote quote) {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
