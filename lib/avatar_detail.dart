import 'package:flutter/material.dart';
import 'main.dart';

class AvatarDetail extends StatefulWidget {
  AvatarDetail({Key key}) : super(key: key);

  @override
  _AvatarDetailState createState() => _AvatarDetailState();
}

class _AvatarDetailState extends State<AvatarDetail> {
  @override
  Widget build(BuildContext context) {
    var heightsizedBox = SizedBox(
      height: 24.0,
    );
    return Center(
        child: Column(
      children: [
        heightsizedBox,
        Stack(
          children: [
            Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Avatar.jpg')))),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white)),
                  child: FloatingActionButton(
                    mini: true,
                    backgroundColor: Color(hexColor('#6200EE')),
                    onPressed: () {},
                    shape: StadiumBorder(
                        side: BorderSide(color: Colors.white, width: 1)),
                    child: Icon(
                      Icons.add,
                      size: 12,
                    ),
                  ),
                )),
          ],
        ),
        heightsizedBox,
        Text(
          'Tiana Rosser',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          'Developer',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ));
  }
}
