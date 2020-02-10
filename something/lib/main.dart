import 'package:flutter/material.dart';
import 'package:something/ui/Compatibility.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String AppTitle = 'Нумерология';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(AppTitle), backgroundColor: Colors.black12),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class NumerologyListItem extends StatelessWidget {
  const NumerologyListItem({
    this.icon,
    this.title,
    this.description,
  });

  final Icon icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: icon,
          ),
          Expanded(
            flex: 3,
            child: CardsDescription(
              title: title,
              user: description,
            ),
          ),
        ],
      ),
    );
  }
}

class CardsDescription extends StatelessWidget {
  const CardsDescription({
    Key key,
    this.title,
    this.user,
  }) : super(key: key);

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      //itemExtent: 106.0,
      children: <NumerologyListItem>[
        NumerologyListItem(
          description: 'Проверь свою совместимость',
          icon: Icon(Icons.airplanemode_active, color: Colors.purple,),
          title: 'Совместимость',
        ),
        NumerologyListItem(
          description: 'Телец',
          icon: Icon(Icons.attach_money, color: Colors.blueAccent),
    title: 'Персональный гороскоп',
        ),
      ],
    );
  }

//  Navigator.push(
//  context,
//  MaterialPageRoute(builder: (context)=> ListOfSomething()),
//  );
}