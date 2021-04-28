import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              color: Colors.black54,
              icon: Icon(Icons.arrow_back),
              onPressed: () {}),
          actions: [
            IconButton(
                color: Colors.black,
                icon: Icon(Icons.more_vert),
                onPressed: () {})
          ],
        ),
        body: ProfileDetail(),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _avatarDetail(),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            height: 15,
            indent: 17,
            endIndent: 18,
            color: Colors.black54,
          ),
          _selectChoose(),
          Divider(
            height: 15,
            indent: 17,
            endIndent: 18,
            color: Colors.black54,
          ),
          _frendsDetail(),
          Divider(
            height: 15,
            indent: 17,
            endIndent: 18,
            color: Colors.black54,
          ),
          _mediaDetail(),
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

Widget _avatarDetail() {
  return Center(
      child: Column(
    children: [
      SizedBox(
        height: 24.0,
      ),
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
      SizedBox(
        height: 24.0,
      ),
      Text(
        'Tiana Rosser',
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.15),
      ),
      Text(
        'Developer',
        style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Colors.grey[600]),
      )
    ],
  ));
}

Widget _selectChoose() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 9),
        Align(
          alignment: FractionalOffset(0.06, 0.3),
          // alignment: Alignment.centerLeft,
          child: Text('Select type',
              style: TextStyle(
                fontSize: 24,
              )),
        ),
        SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[200]),
                    foregroundColor: MaterialStateProperty.all(Colors.black54),
                    overlayColor:
                        MaterialStateProperty.all(Color(hexColor('#6200EE'))),
                    elevation: MaterialStateProperty.all(0)),
                onPressed: () {},
                child: Text(
                  "Black",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            ElevatedButton(
              // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  overlayColor:
                      MaterialStateProperty.all(Color(hexColor('#6200EE'))),
                  elevation: MaterialStateProperty.all(0)),

              onPressed: () {},
              child: Text("Bold",
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              width: 8.0,
            ),
            ElevatedButton(
              // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  overlayColor:
                      MaterialStateProperty.all(Color(hexColor('#6200EE'))),
                  elevation: MaterialStateProperty.all(0)),

              onPressed: () {},
              child: Text("Medium",
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              width: 8.0,
            ),
            ElevatedButton(
              // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  overlayColor:
                      MaterialStateProperty.all(Color(hexColor('#6200EE'))),
                  elevation: MaterialStateProperty.all(0)),

              onPressed: () {},
              child: Text("Regular",
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              width: 8.0,
            ),
            ElevatedButton(
              // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                  foregroundColor: MaterialStateProperty.all(Colors.black54),
                  overlayColor:
                      MaterialStateProperty.all(Color(hexColor('#6200EE'))),
                  elevation: MaterialStateProperty.all(0)),

              onPressed: () {},
              child: Text("Light",
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
            ),
          ]),
        )
      ],
    ),
  );
}

Widget _frendsDetail() {
  return Column(children: [
    Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Friends',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
    ),
    Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/first.jpg'),
          ),
          title: Text(
            'Corey George',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Text(
            'Developer',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.25,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
            color: Colors.red[200],
          ),
        ),
        Divider(
          height: 0,
          indent: 72,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/second.jpg'),
          ),
          title: Text(
            'Ahmad Vetrovs',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Text(
            'Developer',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.25,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
            color: Colors.red[200],
          ),
        ),
        Divider(
          height: 0,
          indent: 72,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/third.jpg'),
          ),
          title: Text(
            'Cristofer Workman',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Text(
            'Developer',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.25,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
            color: Colors.red[200],
          ),
        ),
        Divider(
          height: 0,
          indent: 72,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/four.jpg'),
          ),
          title: Text(
            'Tiana Korsgaard',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          subtitle: Text(
            'Developer',
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.25,
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
            color: Colors.red[200],
          ),
        ),
        Container(
          width: 328,
          height: 36,
          margin: EdgeInsets.symmetric(vertical: 16.0),
          child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD FRIEND',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ],
              )),
        )
      ],
    )
  ]);
}

List<String> images = [
  'assets/images/medias/media1.png',
  'assets/images/medias/media2.png',
  'assets/images/medias/media3.png',
  'assets/images/medias/media4.png',
  'assets/images/medias/media5.png',
  'assets/images/medias/media6.png',
  'assets/images/medias/media7.png',
  'assets/images/medias/media8.png',
  'assets/images/medias/media9.png',
];

Widget _mediaDetail() {
  return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("My media",
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                )),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 17, mainAxisSpacing: 14),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    child: Image.asset(images[index]),
                  ),
                  Positioned(
                    top: 9,
                    right: 22,
                    child: Container(
                      width: 24,
                      height: 24,
                      child: FloatingActionButton(
                        backgroundColor: Colors.red[200],
                        onPressed: () {},
                        child:
                            Image.asset('assets/images/icons/icon_close.png'),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 156,
                height: 36,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('DELETE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      )),
                  style: ElevatedButton.styleFrom(
                      primary: Color(hexColor('#6200EE'))),
                ),
              ),
              Container(
                width: 156,
                height: 36,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('ADD',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                          color: Color(hexColor('#6200EE')))),
                ),
              ),
            ],
          ),
        ],
      ));
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}
