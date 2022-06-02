import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CollegeCard(),
  ));
}

class CollegeCard extends StatefulWidget {
  const CollegeCard({Key? key}) : super(key: key);

  @override
  State<CollegeCard> createState() => _CollegeCardState();
}

class _CollegeCardState extends State<CollegeCard> {
  int semester = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (semester < 8) {
            setState(() {
              semester += 1;
            });
          } else {
            setState(() {
              semester = 0;
            });
          }
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:
                    const AssetImage('assets/capturing-the-moment-tu.jpeg'),
                backgroundColor: Colors.grey[900],
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
                fontWeight: FontWeight.bold,
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
            Text(
              '$semester',
              style: const TextStyle(
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

/*class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
