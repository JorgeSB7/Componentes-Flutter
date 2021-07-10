import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            leading: Icon(Icons.add_moderator_outlined, color: Colors.deepOrange),
            title: Text('Paladín, la mejor clase de D&D'),
            subtitle: Text(
                'Sean cuales sean sus orígenes y sus misiones, los paladines están unidos por sus juramentos para luchar en contra de las fuerzas del mal. El juramento de un paladín es un lazo muy poderoso. Es una fuente de poder que convierte a un devoto guerrero en un campeón bendecido.',
                textAlign: TextAlign.justify),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ]));
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://free4kwallpapers.com/uploads/originals/2020/02/14/a-super-detailed-fantasy-world-.-been-there-in-my-collection-since-years-wallpaper_.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          /* Image(
            image: NetworkImage('https://free4kwallpapers.com/uploads/originals/2020/02/14/a-super-detailed-fantasy-world-.-been-there-in-my-collection-since-years-wallpaper_.jpg'),
            ), */
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'No temáis a la grandeza; algunos nacen grandes, algunos logran grandeza, a algunos la grandeza les es impuesta y a otros la grandeza les queda grande.'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[BoxShadow(color: Colors.black26, blurRadius: 5.0, spreadRadius: 1.0, offset: Offset(0.0, 5.0))]
          //color: Colors.red
          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
