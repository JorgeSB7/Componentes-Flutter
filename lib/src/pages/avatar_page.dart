import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/hots_es_gamepedia/images/7/7f/Deathwing_Key_Artwork.jpg/revision/latest?cb=20191023091355'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('JS'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage(
                'https://static.wikia.nocookie.net/hots_es_gamepedia/images/7/7f/Deathwing_Key_Artwork.jpg/revision/latest?cb=20191023091355')),
      ),
    );
  }
}
