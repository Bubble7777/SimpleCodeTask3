import 'package:flutter/material.dart';
import 'main.dart';

class SelectChoose extends StatefulWidget {
  SelectChoose({Key key}) : super(key: key);

  @override
  _SelectChooseState createState() => _SelectChooseState();
}

class _SelectChooseState extends State<SelectChoose> {
  @override
  Widget build(BuildContext context) {
    var selectButtonStyle = ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
        foregroundColor: MaterialStateProperty.all(Colors.black54),
        overlayColor: MaterialStateProperty.all(Color(hexColor('#6200EE'))),
        elevation: MaterialStateProperty.all(0));
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 9),
          Align(
            alignment: FractionalOffset(0.06, 0.3),
            // alignment: Alignment.centerLeft,
            child: Text('Select type',
                style: Theme.of(context).textTheme.bodyText1),
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
                  style: selectButtonStyle,
                  onPressed: () {},
                  child: Text("Black",
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                style: selectButtonStyle,

                onPressed: () {},
                child:
                    Text("Bold", style: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                style: selectButtonStyle,

                onPressed: () {},
                child: Text("Medium",
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                style: selectButtonStyle,

                onPressed: () {},
                child: Text("Regular",
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                // style: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                style: selectButtonStyle,

                onPressed: () {},
                child:
                    Text("Light", style: Theme.of(context).textTheme.bodyText2),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
