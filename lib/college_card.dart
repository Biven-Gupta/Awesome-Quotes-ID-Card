import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CollegeCard(),
  ));
}

class CollegeCard extends StatelessWidget {
  const CollegeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('College ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage:
                    AssetImage('assets/capturing-the-moment-tu.jpeg'),
                radius: 100.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Biven Gupta',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 40.0,
                fontFamily: 'ComforterBrush',
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Current College Semester',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              '8',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 40.0,
                fontFamily: 'ComforterBrush',
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 10.0),
                const Text(
                  'biven@orientaloutsourcing.com',
                  style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.0,
                    fontSize: 14.0,
                    //fontFamily: 'ComforterBrush'
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone_android,
                  color: Colors.grey[600],
                ),
                const SizedBox(width: 10.0),
                const Text(
                  '+91-7837468622',
                  style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.0,
                    fontSize: 14.0,
                    //fontFamily: 'ComforterBrush'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
