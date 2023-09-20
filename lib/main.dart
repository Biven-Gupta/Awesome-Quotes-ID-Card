import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Everyone'),
          centerTitle: true,
          backgroundColor: Colors.red[300],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: const Text(
                    'Hello',
                    //textAlign: TextAlign.center,
                  ),
                  color: Colors.amber,
                  //padding: EdgeInsets.all(60.0),
                ),
              ],
            ),
            const Text(
              'Hello',
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(backgroundColor: Colors.black, padding: const EdgeInsets.all(20.0)),
              child: const Text(
                'Hello',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Hello',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: const EdgeInsets.all(40.0),
              ),
            ),
            Expanded(
              child: Container(
                child: const Text(
                  'Hello',
                  textAlign: TextAlign.center,
                ),
                color: Colors.amber,
                padding: const EdgeInsets.all(60.0),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text('Click'),
          backgroundColor: Colors.red[300],
        ),
      ),
    ));
