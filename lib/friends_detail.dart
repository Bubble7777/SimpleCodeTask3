import 'package:flutter/material.dart';

class FriendsDetail extends StatefulWidget {
  FriendsDetail({Key key}) : super(key: key);

  @override
  _FriendsDetailState createState() => _FriendsDetailState();
}

class _FriendsDetailState extends State<FriendsDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Friends',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/first.jpg'),
            ),
            title: Text('Corey George',
                style: Theme.of(context).textTheme.subtitle1),
            subtitle:
                Text('Developer', style: Theme.of(context).textTheme.subtitle2),
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
            title: Text('Ahmad Vetrovs',
                style: Theme.of(context).textTheme.subtitle1),
            subtitle:
                Text('Developer', style: Theme.of(context).textTheme.subtitle2),
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
            title: Text('Cristofer Workman',
                style: Theme.of(context).textTheme.subtitle1),
            subtitle:
                Text('Developer', style: Theme.of(context).textTheme.subtitle2),
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
            title: Text('Tiana Korsgaard',
                style: Theme.of(context).textTheme.subtitle1),
            subtitle:
                Text('Developer', style: Theme.of(context).textTheme.subtitle2),
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
                    Text('ADD FRIEND',
                        style: Theme.of(context).textTheme.button),
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
}
