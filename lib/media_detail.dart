import 'package:flutter/material.dart';
import 'main.dart';

class MediaDetail extends StatefulWidget {
  MediaDetail({Key key}) : super(key: key);

  @override
  _MediaDetailState createState() => _MediaDetailState();
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

class _MediaDetailState extends State<MediaDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("My media",
                  style: Theme.of(context).textTheme.headline5),
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
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .apply(color: Colors.white)),
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
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .apply(color: Color(hexColor('#6200EE'))))),
                ),
              ],
            ),
          ],
        ));
  }
}
