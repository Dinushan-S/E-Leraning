import 'package:flutter/material.dart';
import 'package:english_learn_app/utils/const.dart';
import 'package:english_learn_app/widgets/card_courses.dart';
import 'package:english_learn_app/widgets/header_inner.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'dragproposition.dart';
import 'wordfind.dart';

class Tasks extends StatelessWidget {
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
                    Navigator.pop(context);
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
              SizedBox(height: Constants.mainPadding * 1),
              const Center(
                child: Text(
                  "Tasks",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: Constants.mainPadding * 2),
              Container(
                padding: EdgeInsets.fromLTRB(
                    Constants.mainPadding,
                    Constants.mainPadding * 2,
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
                    TextButton(
                      child: CardCourses(
                        color: Colors.green,
                        title: "Drag Image with correct Preposition",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DragDrop()),
                        );
                      },
                    ),
                    TextButton(
                      child: CardCourses(
                        color: Constants.lightYellow,
                        title: "MyWord",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WordFind()),
                        );
                      },
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
