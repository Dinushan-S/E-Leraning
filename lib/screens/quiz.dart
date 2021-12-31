import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:intl/intl.dart';
import 'package:english_learn_app/utils/const.dart';
import 'package:english_learn_app/widgets/header_inner.dart';

import 'home_screen.dart';

void main() => runApp(Quiz());

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Constants.mainPadding,
                    vertical: Constants.mainPadding),
                height: 44,
                width: 44,
                child: FlatButton(
                  padding: const EdgeInsets.all(0),
                  color: Colors.white.withOpacity(0.3),
                  child:
                      const Icon(Icons.keyboard_backspace, color: Colors.white),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          HeaderInner(),
          ListView(
            children: <Widget>[
              SizedBox(height: Constants.mainPadding * 0),
              const Center(
                child: Text(
                  "Preposition Quiz",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: Constants.mainPadding * 1),
              Container(
                padding: EdgeInsets.fromLTRB(
                    Constants.mainPadding,
                    Constants.mainPadding * 1,
                    Constants.mainPadding,
                    Constants.mainPadding),
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    quiz(
                        context: context,
                        imgurl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8a3dCW6m_XsHvjV6fqS6-zihMfzQlc_pQw&usqp=CAU",
                        quet: 'Question 1',
                        que: " Teddy bear is ___ the box ?",
                        ans: "in",
                        lans: ['On', 'behind']),
                    Divider(
                      height: 25,
                    ),
                    quiz(
                        context: context,
                        imgurl:
                            'https://teleskola.mt/wp-content/uploads/2020/05/prepositions-52a4c557d79a62b8ae03ec144adb291b.png',
                        que: "Teddy is __ the table ?",
                        quet: "Question 2",
                        ans: "on",
                        lans: ['in', 'above']),
                    Divider(
                      height: 25,
                    ),
                    quiz(
                        context: context,
                        //https://thumbs.dreamstime.com/b/preposition-place-bird-box-funny-learning-english-children-vector-cartoon-description-animal-around-isolated-210003903.jpg
                        imgurl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBugM9TKeuH7f3eBMPSdZWtUeBslzltDqCuGbBN7orRWVesXQS3Vui3c7wjJBprTRvLg4&usqp=CAU",
                        quet: 'Question 3',
                        que: "Apple is __  two banana",
                        ans: "between",
                        lans: ['behind', 'beside']),
                    Divider(
                      height: 25,
                    ),
                    quiz(
                        context: context,
                        imgurl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSNAsmNPYTpwQTPRAHYDs7JC4cioHl6j0OvA&usqp=CAU",
                        quet: 'Question 4',
                        que: "Rat is__ the box ?",
                        ans: "behind",
                        lans: ['between', 'beside']),
                    Divider(
                      height: 25,
                    ),
                    quiz(
                        context: context,
                        imgurl:
                            //"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",
                            "https://www.easypacelearning.com/design/images/under.jpeg",
                        quet: 'Question 5',
                        que: "cat is___ the table",
                        ans: "Under",
                        lans: ['over', 'on']),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  QuizView quiz(
      {BuildContext context,
      String imgurl,
      String quet,
      String que,
      String ans,
      List<String> lans}) {
    return QuizView(
      image: Container(
        child: Image.network(
          imgurl,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
      questionTag: quet,
      questionColor: Colors.black,
      tagColor: Colors.black54,
      backgroundColor: Colors.white70,
      tagBackgroundColor: Color(0xffF1CDC5),
      answerBackgroundColor: Color(0xffA39E9D),
      question: que,
      height: 500,
      width: 350,
      rightAnswer: ans,
      wrongAnswers: lans,
      onRightAnswer: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Correct!"),
                backgroundColor: Colors.green.shade300,
              );
            });
      },
      onWrongAnswer: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Wrong!"),
                backgroundColor: Colors.red,
              );
            });
      },
    );
  }
}
