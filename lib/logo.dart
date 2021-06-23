import 'package:flutter/material.dart';
import 'package:vedic_math/home.dart';
import 'dart:async';

class logo extends StatefulWidget {
  const logo({ Key? key }) : super(key: key);

  @override
  _logoState createState() => _logoState();
}

class _logoState extends State<logo> {
  void initState() {
    // TODO: implement initState
    
    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context, '/home'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage('images/logo.jpg'))
          ),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text('M.A.K.E',style: TextStyle(color: Colors.black,fontFamily: 'FredokaOne',fontSize: 40),),
              SizedBox(height:10),
              Text('Mathematical Assistant for Kids Enrichment',style: TextStyle(color: Colors.black,fontFamily: 'FredokaOne',fontSize: 15),)
            ],
          )),
        ),
      ),
    );
  }
}