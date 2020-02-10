import 'package:flutter/material.dart';

class ListOfSomething extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Вторая активити"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.bubble_chart, color: Colors.green,),
            title: Text('Гугл баба'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money, color: Colors.blueAccent),
            title: Text('Плати бабос'),
          ),
          ListTile(
            leading: Icon(Icons.local_shipping, color: Colors.red),
            title: Text('Еду к твоей мамке :)'),
          ),
        ],
      ),
    );
  }
}