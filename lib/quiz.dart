import 'dart:math';

import 'package:flutter/material.dart';


class quiz extends StatefulWidget {
  const quiz();

  @override
  _quizState createState() => _quizState();
}

List <qns> level1=[
  qns(qn: 'A bag contains 17 packets of balloons. Each packet contains 13 balloons. How many balloons are there in total?', ans:221, clr: 0xFFFF007F,con: 'tc1'),
  qns(qn: 'A car factory manufactures 65 cars each month. How many cars are manufactured in 11 months?', ans:715, clr: 0xFF15F4EE,con: 'tc2'),
  qns(qn: 'A bus has a seating capacity of 35 people. How many people  can travel in 35 bus of same seating capacity?', ans: 1225, clr:0xFF76FF03,con: 'tc3'),
  qns(qn: 'A man has 78 notes of ₹50.  How much money does he possess?', ans: 3900, clr:0xFF4A148C,con: 'tc4'),
  qns(qn:'There are 30 days in a month. How many days are in one year (12 months)?', ans: 360, clr: 0xFFFF007F,con: 'tc5'),
  qns(qn: 'The price of a book is ₹39. What is the cost of 35 books?', ans: 1365, clr:0xFF15F4EE,con: 'tc6'),
  qns(qn: 'Ram started making chocolates. One day he has 19 customers and each one orders 11 chocolates. How many chocolates does he make?', ans:209, clr: 0xFF76FF03,con: 'tc7'),
  qns(qn: 'Nick delivers 78 newspapers daily. How many newspapers does he deliver in 79 days?', ans: 6162, clr:0xFF4A148C,con: 'tc8'),
  qns(qn: 'There are 60 min in an hour. How many minutes are there in 12 hours?', ans: 720, clr: 0xFFFF007F,con: 'tc9'),
  qns(qn: 'Cost of 1 bottle is ₹24. How much money is needed to buy 36 bottles?', ans:864, clr:0xFF15F4EE,con: 'tc10')
];
List <qns> level2 =[
  qns(qn: 'Each side of a square piece of glass is 25 centimetres long. Find the area of glass piece?', ans: 625, clr:0xFF15F4EE,con: 'tb1'),
  qns(qn: 'A school ordered 60 boxes of paper. There were 31 sheets of paper in each box. Each paper costs ₹1. What is the total cost of the paper?', ans: 1860, clr:0xFF76FF03,con: 'tb2'),
  qns(qn: 'The length and breadth of a rectangular park is 223 cm and 227 cm. Find the area of the park?', ans: 50621, clr:0xFF4A148C,con: 'tb3'),
  qns(qn: 'Erica bought 39 bunches of bananas. There were 10 bananas in each bunch. Out of this 4 bananas were rotten. How many of the bananas are remaining?', ans: 384, clr:0xFFFF007F,con: 'tb4'),
  qns(qn: 'A square piece of plastic has sides that are 45 centimetres long. What is the piece of plastic’s area?', ans:2025, clr: 0xFF15F4EE,con: 'tb5'),
  qns(qn:'An orchard has 12 rows of mango trees. If there are 13 trees in each row. If each trees have 154 mangoes, What is the total number of mango trees in the orchard?', ans: 24024, clr: 0xFF76FF03,con: 'tb6'),
  qns(qn: 'Our heart beats about 72 times in a minute. How many times will it beat in an hour?', ans: 4320, clr:0xFF4A148C,con: 'tb7'),
  qns(qn: 'A truck has 61 boxes of candies. Each box has a 69 candies in it. What is the total number of candies on the truck?', ans: 4209, clr: 0xFFFF007F,con: 'tb8'),
  qns(qn: 'Shyam works for 10 hours in a day. If Shyam works for 5 days in a week, calculate the working time of Shyam in minutes .', ans: 3000, clr: 0xFF15F4EE,con: 'tb9'),
  qns(qn: 'A packet contains 115 of candles. How many candles are there in 115 packets?', ans: 13225, clr: 0xFF76FF03,con: 'tb10')
];





class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Let\'s workout',style: TextStyle(color:Colors.black,fontFamily: 'FredokaOne',fontSize: 20),),
        centerTitle: true,
        elevation: 0,
        bottom: TabBar(
          indicatorColor: Colors.black,
          tabs: [
          Tab(child: Text('Level 1', style: TextStyle(color:Colors.black,fontFamily: 'FredokaOne'),),),
         Tab(child: Text('Level 2',style: TextStyle(color:Colors.black,fontFamily: 'FredokaOne'),),)
        ],),
      ),
      body: TabBarView(
        children: <Widget>[
       ListView(
         children: level1.map((e) => maker(qn: e.qn,ans: e.ans,clr: e.clr,con: e.con)).toList()),
          ListView(
         children: level2.map((e) => maker(qn: e.qn,ans: e.ans,clr: e.clr,con: e.con)).toList()),
      ]),
    ) 
    );
  }
}



class qns{
  String qn;
  int ans;
  int clr;
 String con;
  qns({required this.qn,required this.ans,required this.clr,required this.con});
}

class maker extends StatefulWidget {
  String qn;
  int ans;
  int clr;
  String con;
  maker({required this.qn,required this.ans,required this.clr,required this.con });
  
  @override
  _makerState createState() => _makerState(qn,ans,clr,con);
}

class _makerState extends State<maker> {
   String qn;
  int ans;
  int clr;
  String con;
  int a=0;
  String txt ='';
  final _formkey = GlobalKey<FormState>();
  _makerState( this.qn, this.ans, this.clr,this.con);
 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
           color:Color(clr),
           borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Text(qn,style: TextStyle(color: Colors.black,fontFamily: 'FredokaOne',fontSize: 20),),
                TextFormField(
                  decoration : InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Answer here',
                    hintStyle: TextStyle(color: Colors.black,fontFamily: 'FredokaOne'),
                    errorStyle: TextStyle(color: Colors.black,fontFamily: 'FredokaOne',fontSize: 15),
                  ),
                  validator: (con){
                    if(con==null|| con.isEmpty){
                      return 'please enter answer';
                    }
                  },
                  onChanged: (con) {
                    setState(() {
                      a=int.parse(con);
                    });
                  },
                ),
                FlatButton(onPressed: (){
                  setState(() {
                   if(_formkey.currentState!.validate()){
                      if(a==ans)
                    {
                      txt='Right Answer';
                    }
                    else{txt = 'Wrong answer, Right answer is $ans';}

                   }
                  });
                }, child: Text('check',style:TextStyle(color: Colors.black,fontFamily: 'FredokaOne',))),

                 Text(txt,style:TextStyle(color: Colors.black,fontFamily: 'FredokaOne',fontSize: 20),),
              ]
            ),
          ),
        ),
      ),
      
    );
  }
}