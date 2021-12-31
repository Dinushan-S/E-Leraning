import 'package:english_learn_app/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class HeaderInner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20.0)),
              color: Constants.blueLight,
            ),
          ),
          flex: 1,
        ),
        Expanded(child: Container(), flex: 1)
      ],
    );
  }
}
