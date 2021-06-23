import 'package:flutter/material.dart';
import 'package:vedic_math/quiz.dart';
import 'nextpage.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int c_index = 0;
  final tabs = [learn(), quiz()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[c_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: c_index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              title: Text(
                'Let\'s do',
              ),
              backgroundColor: Colors.green)
        ],
        onTap: (index) {
          setState(() {
            c_index = index;
          });
        },
      ),
    );
  }
}

class learn extends StatefulWidget {
  const learn({Key? key}) : super(key: key);

  @override
  _learnState createState() => _learnState();
}

class _learnState extends State<learn> {
  bool isv1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Text(
              'Hello kids,let\'s learn vedic mathematics...',
              style: TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
            ),
            SizedBox(height: 10),
            Image(height: 200, image: AssetImage('images/AKL.png')),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            color: Colors.amber,
                            child: Text(
                              'Vedic Mathematics is a collection of techniques which are known as Sutras, to solve mathematical arithmetics in easy and faster way. It was discovered by Indian mathematician Jagadguru Shri Bharathi Krishna Tirthaji in the period between A.D. 1911 and 1918. \nVedic Mathematics consists of 16 Sutras and 13 sub-sutras which are either General Techniques (applicable to all sets of given data) and Specific Techniques (applicable to specific sets of given data), can be used for problems involved in arithmetic, algebra, geometry, calculus, conics',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne', fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'What is Vedic mathematics?',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                  ),
                  Text(
                    'Tap to know',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 10),
                  )
                ],
              )),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            color: Colors.amber,
                            child: Text(
                              'Vedic mathematics helps a person to solve problems  10-15 times faster as well as reduces counting fingers and scratch works.\nVedic sutras reduces burden and increases concentration & creativity along with improving memory and greater mental ability.\nIt\'s application lies in planetary position calculation , construction of calendars with solar as well as lunar months and so on.',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne', fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Why we should use Vedic Mathematics?',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                  ),
                  Text(
                    'Tap to know',
                    style: TextStyle(fontFamily: 'FredokaOne', fontSize: 10),
                  )
                ],
              )),
            ),
            Text(
              'Let\'s learn some vedic sutras',
              style: TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => sutra1(
                              sutra: 'URDHVA-TIRYAGBHYAM',
                              image: 'image',
                            )));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF15F4EE),
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'URDHVA-TIRYAGBHYAM',
                        style:
                            TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                      ),
                      Image(height: 170, image: AssetImage('images/rocket.png'))
                    ],
                  )),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => sutra2(
                              sutra: 'EKADHIKENA PURVENA',
                              image: 'image',
                            )));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFF007F),
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'EKADHIKENA PURVENA',
                        style:
                            TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                      ),
                      Image(height: 170, image: AssetImage('images/kid.png'))
                    ],
                  )),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => sutra3(
                              sutra: 'ANURUPYENA',
                              image: 'image',
                            )));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreenAccent[400],
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'ANURUPYENA',
                        style:
                            TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                      ),
                      Image(height: 170, image: AssetImage('images/ideas.png'))
                    ],
                  )),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => sutra4(
                              sutra: 'ANTYAORDASKE’PI',
                              image: 'image',
                            )));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple[900],
                  ),
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'ANTYAORDASKE’PI',
                        style:
                            TextStyle(fontFamily: 'FredokaOne', fontSize: 25),
                      ),
                      Image(
                          height: 170, image: AssetImage('images/thinking.png'))
                    ],
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
