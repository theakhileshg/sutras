import 'package:flutter/material.dart';
import 'package:vedic_math/quiz.dart';

class sutra1 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra1({required this.sutra, required this.image});

  @override
  _sutra1State createState() => _sutra1State(sutra, image);
}

class _sutra1State extends State<sutra1> {
  String sutra;
  String image;
  int _n = 0,
      _m = 0,
      _n1 = 0,
      _m1 = 0,
      _n2 = 0,
      _m2 = 0,
      _a = 0,
      _b = 0,
      _c = 0,
      _d1 = 0,
      _d2 = 0,
      _x1 = 0,
      _x2 = 0,
      _y1 = 0,
      _y2 = 0,
      _z1 = 0,
      _z2 = 0,
      _ans = 0;
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv5 = false,
      isq = false;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();

  _sutra1State(this.sutra, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          sutra,
          style: TextStyle(
              color: Colors.black, fontFamily: 'FredokaOne', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Urdhva - Tiryagbhyam Sutra is a general technique applicable to  multiplication of any two digit numbers. The word  means “Vertically and cross wise”.',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'FredokaOne',
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _tc1,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLength: 2,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter first number',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _tc2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLength: 2,
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter second number',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _isv1 = true;
                      _n = int.parse(_tc1.text);
                      _m = int.parse(_tc2.text);
                      _n1 = _n % 10;
                      _n2 = _n ~/ 10;
                      _m1 = _m % 10;
                      _m2 = _m ~/ 10;
                      _a = _n2 * _m2;
                      _b = _n1 * _m1;
                      _c = (_n2 * _m1) + (_n1 * _m2);
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Calculate',
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv2 = true;
                          }),
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Multiply $_n2 and $_m2 i.e $_n2 x $_m2 =  $_a ',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'tap for nextstep',
                                      style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv2,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv3 = true;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900]),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Multiply $_n1 and $_m1 i.e $_n1 x $_m1 =  $_b ',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                ' tap for nextstep',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv3,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv4 = true;
                            _x1 = _a ~/ 10;
                            _x2 = _a % 10;
                            _y1 = _b ~/ 10;
                            _y2 = _b % 10;
                            _d1 = _c ~/ 10;
                            _d2 = _c % 10;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Now do ($_n1 x $_m2) + ($_n2 x $_m1) = $_c',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                ' Tap for nextstep',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv4,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv5 = true;
                            _z2 = _x2 + _d1;
                            _z1 = _y1 + _d2;
                            _ans = _n * _m;
                          }),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Now do $_x1 | $_x2 + $_d1 | $_d2 + $_y1 | $_y2',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                ' Tap for check answer',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv5,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900]),
                        child: Center(
                          child: Text(
                            'Answer is $_ans',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.white,
                                fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        _tc1.clear();
                        _tc2.clear();
                        _isv1 = false;
                        _isv2 = false;
                        _isv3 = false;
                        _isv4 = false;
                        _isv5 = false;
                      });
                    },
                    color: Colors.amber[700],
                    child: Text(
                      'Reset',
                    )),
              ]),
        ),
      ),
    );
  }
}

class sutra2 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra2({required this.sutra, required this.image});

  @override
  _sutra2State createState() => _sutra2State(sutra, image);
}

class _sutra2State extends State<sutra2> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  bool _isv1 = false, _isv2 = false, _isv3 = false, _isv1b = false;
  int _a = 0, _b = 0, _c = 0, _d = 0, _r = 0;
  _sutra2State(this.sutra, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          sutra,
          style: TextStyle(
              color: Colors.black, fontFamily: 'FredokaOne', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ekadhikena Purvena Sutra is a specific  technique applicable to  find squares of any numbers with last digit as  5. The word  means “One more than the Previous”.',
                  style: TextStyle(
                      fontFamily: 'FredokaOne',
                      color: Colors.black,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _tc1,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: 'Enter number ending with 5',
                      hintStyle: TextStyle(
                          color: Colors.black, fontFamily: 'FredokaOne'),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _a = int.parse(_tc1.text);
                      _d = _a ~/ 10;
                      _r = _a % 10;
                      if (_r != 5) {
                        _isv1b = true;
                      } else {
                        _isv1 = true;
                      }
                      _b = _d + 1;
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Calculate',
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Visibility(
                        visible: _isv1b,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Oops!!!, the last digit is not 5',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.red,
                                      fontSize: 20),
                                )))),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv2 = true;
                            _c = _d * _b;
                          }),
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Avoid the 5 at end , then add 1 to remaining part\n i.e $_d + 1 = $_b',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Tap for nextstep',
                                      style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv2,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _isv3 = true;
                          }),
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Multiply the remaining part and result\n i.e $_d x $_b = $_c',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Tap for nextstep',
                                      style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    SizedBox(height: 10),
                    Visibility(
                      visible: _isv3,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Now 25 to the right end of the product \n i.e Answer is $_c 25',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ))),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        _tc1.clear();
                        _isv1 = false;
                        _isv2 = false;
                        _isv3 = false;
                        _isv1b = false;
                      });
                    },
                    color: Colors.amber[700],
                    child: Text(
                      'Reset',
                    ))
              ]),
        ),
      ),
    );
  }
}

class sutra3 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra3({required this.sutra, required this.image});

  @override
  _sutra3State createState() => _sutra3State(sutra, image);
}

class _sutra3State extends State<sutra3> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv5 = false,
      _isv6 = false;
  int _n = 0,
      _m = 0,
      _f = 0,
      _a = 0,
      _b = 0,
      _c = 0,
      _d = 0,
      _e = 0,
      _ans = 0,
      _ans1 = 0,
      flag = 0;
  _sutra3State(this.sutra, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          sutra,
          style: TextStyle(
              color: Colors.black, fontFamily: 'FredokaOne', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Anurupyena Sutra is a specific  technique applicable to multiplication of numbers which are closer to the multiple of 10. It means “proportionality”.',
                style: TextStyle(
                    fontFamily: 'FredokaOne',
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _tc1,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter first number',
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _tc2,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter second number',
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _isv1 = true;
                    _n = int.parse(_tc1.text);
                    _m = int.parse(_tc2.text);
                    if ((_n ~/ 10) == (_m ~/ 10)) {
                      flag = 1;
                      _f = (_n ~/ 10) + 1;
                    } else if ((_n ~/ 10) < (_m ~/ 10)) {
                      _f = (_n ~/ 10) + 1;
                    } else {
                      _f = (_m ~/ 10) + 1;
                    }
                    _a = (_f * 10) - _n;
                    _b = (_f * 10) - _m;
                  });
                },
                color: Colors.amber[700],
                child: Text(
                  'Calculate',
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Visibility(
                    visible: _isv1,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv2 = true;
                        }),
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Find the nearest multiple of 10 for $_n and $_m \n i.e for $_n and $_m it\'s $_f 0 ',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for nextstep',
                                    style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv2,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv3 = true;
                          _c = _a * _b;
                        }),
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Find the deviation of $_n and $_m from $_f 0 \n i.e $_f 0 - $_n = $_a  and $_f 0 - $_m = $_b',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for nextstep',
                                    style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv3,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv4 = true;
                          _d = _n - _b;
                        }),
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Multiply th deviations \n i.e $_a x $_b = $_c',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for nextstep',
                                    style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv4,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv5 = true;
                          _e = _d * _f;
                        }),
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Take difference of any given number with anothers deviation \n i.e $_n - $_b = $_d',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for nextstep',
                                    style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv5,
                    child: GestureDetector(
                      onTap: () => {
                        setState(() {
                          _isv6 = true;
                          _ans = _n * _m;
                          _ans1 = (_e * 10) + _c;
                        }),
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Multiply the difference with factor \n i.e $_d x $_f = $_e',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Tap for nextstep',
                                    style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv6,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                flag == 1
                                    ? 'Place product of deviation at right of last result \n i.e Answer is $_ans'
                                    : 'Multiply result with 10 and add product of deviation \n i.e ($_e x 10) + $_c = $_ans1',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ))),
                  ),
                ],
              ),
              SizedBox(height: 10),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _tc1.clear();
                      _tc2.clear();
                      _isv1 = false;
                      _isv2 = false;
                      _isv3 = false;
                      _isv4 = false;
                      _isv5 = false;
                      _isv6 = false;
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Reset',
                    style: TextStyle(fontFamily: 'ConcertOne'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class sutra4 extends StatefulWidget {
  final String sutra;
  final String image;
  const sutra4({required this.sutra, required this.image});

  @override
  _sutra4State createState() => _sutra4State(sutra, image);
}

class _sutra4State extends State<sutra4> {
  String sutra;
  String image;
  final _tc1 = TextEditingController();
  final _tc2 = TextEditingController();
  bool _isv1 = false,
      _isv2 = false,
      _isv3 = false,
      _isv4 = false,
      _isv1b = false,
      _isv1c = false;
  int _a = 0, _b = 0, _c = 0, _d = 0, _e = 0, _f = 0, _g = 0, _h = 0, _i = 0;
  _sutra4State(this.sutra, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          sutra,
          style: TextStyle(
              color: Colors.black, fontFamily: 'FredokaOne', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Antyaordaske’pi Sutra is a specific  technique applicable to multiplication of  two numbers with  sum of their last digits as 10 and remaining digits are same. The word  means “Last Totalling as 10.”',
                style: TextStyle(
                    fontFamily: 'FredokaOne',
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _tc1,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter first number ',
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: _tc2,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: 'Enter 2nd number ',
                    hintStyle: TextStyle(
                        color: Colors.black, fontFamily: 'FredokaOne'),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _a = int.parse(_tc1.text);
                    _b = int.parse(_tc2.text);
                    _c = _a ~/ 10;
                    _d = _b % 10;
                    _e = _a % 10;
                    _i = _b ~/ 10;
                    if ((_d + _e) == 10 && (_c == _i)) {
                      _isv1 = true;
                    } else if (_c != _i) {
                      _isv1c = true;
                    } else {
                      _isv1b = true;
                    }
                    _f = _d * _e;
                  });
                },
                color: Colors.amber[700],
                child: Text(
                  'Calculate',
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Visibility(
                    visible: _isv1b,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Oops!!!, sum of last digits are not 10',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.red,
                                fontSize: 20),
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv1c,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Text(
                          'Oops!!!, intial digits are not same',
                          style: TextStyle(
                              fontFamily: 'FredokaOne',
                              color: Colors.red,
                              fontSize: 20),
                        )),
                  ),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isv2 = true;
                            _g = _c + 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Multiply the last digits \n i.e $_d x $_e = $_f',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Text(
                                'Tap for next step',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    color: Colors.amber),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv2,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isv3 = true;
                              _h = _g * _c;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueGrey[900],
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Add 1 to the Remaining part \n i.e $_c + 1 = $_g',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  'Tap for Next Step',
                                  style: TextStyle(
                                      fontFamily: 'FredokaOne',
                                      color: Colors.amber),
                                )
                              ],
                            ),
                          ))),
                  SizedBox(height: 10),
                  Visibility(
                      visible: _isv3,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isv4 = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueGrey[900],
                          ),
                          child: Column(children: <Widget>[
                            Text(
                              'Mutiply the remaining part with result \n i.e $_c x $_g = $_h',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'Tap for next step',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  color: Colors.amber),
                            ),
                          ]),
                        ),
                      )),
                  SizedBox(height: 10),
                  Visibility(
                    visible: _isv4,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[900],
                        ),
                        child: Center(
                          child: Text(
                            'Place $_f to right of $_h to get answer \n i.e Answer is $_h $_f',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 10),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      _tc1.clear();
                      _tc2.clear();
                      _isv1 = false;
                      _isv2 = false;
                      _isv3 = false;
                      _isv4 = false;
                      _isv1b = false;
                      _isv1c = false;
                    });
                  },
                  color: Colors.amber[700],
                  child: Text(
                    'Reset',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
