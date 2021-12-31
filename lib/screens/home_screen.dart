import 'package:english_learn_app/screens/login_screen.dart';
import 'package:english_learn_app/screens/viewmodel/DictionaryGame.dart';
import 'package:english_learn_app/screens/task.dart';
import 'package:english_learn_app/screens/quiz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:english_learn_app/utils/const.dart';
import 'package:english_learn_app/widgets/card_courses.dart';
import 'package:english_learn_app/widgets/header_inner.dart';

// class BottomNav {
//   final String title;
//   final IconData icon;
//   final Widget body;

//   BottomNav({required this.title, required this.icon, required this.body});
// }

// final List<BottomNav> bottomNavItems = [
//   BottomNav(
//     title: 'Dictionary',
//     icon: Icons.book,
//     body: DictionaryGame(),
//   ),
//   BottomNav(
//     title: 'Task',
//     icon: Icons.task,
//     body: Tasks(),
//   ),
//   BottomNav(
//     title: 'Quiz',
//     icon: Icons.assignment,
//     body: Quiz(),
//   ),
// ];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  int _currentIndex = 0;
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
                //         actions: [
                //   IconButton(
                //     icon: Icon(Icons.logout),
                //     onPressed: () => logout(context),
                //   )
                // ],

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
                    logout(context);
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
                  "English Learn",
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
                        color: Constants.lightPink,
                        title: "Dictionary",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DictionaryGame()),
                        );
                      },
                    ),
                    TextButton(
                      child: CardCourses(
                        color: Constants.lightYellow,
                        title: "Tasks",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tasks()),
                        );
                      },
                    ),
                    TextButton(
                      child: CardCourses(
                        color: Constants.lightViolet,
                        title: "Quiz",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Quiz()),
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
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       automaticallyImplyLeading: false,
  //       title: Text('English Easy'),
  //       centerTitle: true,
  //       backgroundColor: Colors.green,
  //       actions: [
  //         IconButton(
  //           icon: Icon(Icons.logout),
  //           onPressed: () => logout(context),
  //         )
  //       ],
  //     ),
  //     body: bottomNavItems.elementAt(_currentIndex).body,
  //     bottomNavigationBar: BottomNavigationBar(
  //       backgroundColor: Colors.green,
  //       selectedItemColor: Colors.white,
  //       unselectedItemColor: Colors.blueGrey, //TODO: CHANGE COLOR
  //       currentIndex: _currentIndex,
  //       onTap: (val) => setState(() => _currentIndex = val),
  //       items: bottomNavItems
  //           .map(
  //             (item) => BottomNavigationBarItem(
  //               icon: Icon(item.icon),
  //               label: item.title,
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }
}
