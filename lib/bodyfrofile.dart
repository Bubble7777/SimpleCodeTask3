import 'package:flutter/material.dart';
import 'package:task3/select_choose.dart';

import 'avatar_detail.dart';
import 'friends_detail.dart';
import 'media_detail.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainDivider = Divider(
      height: 15,
      indent: 17,
      endIndent: 18,
      color: Colors.black54,
    );

    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AvatarDetail(),
          SizedBox(
            height: 20.0,
          ),
          mainDivider,
          SelectChoose(),
          mainDivider,
          FriendsDetail(),
          mainDivider,
          MediaDetail(),
          Divider(
            thickness: 2,
            color: Colors.black,
            height: 2,
            indent: 144,
            endIndent: 144,
          ),
          SizedBox(
            height: 14.0,
          )
        ],
      ),
    );
  }
}
