
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: Main(),
//    // Set the theme's primary color, accent color,
//    theme: ThemeData(
//      primarySwatch: Colors.green,
//      accentColor: Colors.lightGreenAccent,
//      // Set background color
//      backgroundColor: Colors.black12,
//    ),
//  ));
//}
//
//class Main extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      // AppBar
//      appBar: AppBar(
//        // AppBar Title
//        title: Text("Что-то"),
//        backgroundColor: Colors.grey,
//        actions: <Widget>[
//
//          IconButton(
//            icon: Icon(
//              Icons.accessible_forward,
//              color: Colors.white,
//            ),
//            onPressed: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context)=> ListOfSomething()),
//                  );
//              // do something
//            },
//          )
//        ],
//      ),
//      body: Container(
//        // Another way to set the background color
//        decoration: BoxDecoration(color: Colors.white),
//        child: Center(
//          child: Container(
//            // use the theme accent color as background color for this widget
//            color: Theme.of(context).accentColor,
//            child: Text(
//              'Hello World!',
//              // Set text style as per theme
//              style: Theme.of(context).textTheme.title,
//            ),
//          ),
//        ),
//      ),
//
////      floatingActionButton: Theme(
////        // override the accent color of theme for this widget only
////        data: Theme.of(context).copyWith(
////          colorScheme:
////          Theme.of(context).colorScheme.copyWith(secondary: Colors.pinkAccent),
////        ),
////        child: FloatingActionButton(
////          onPressed: null,
////          child: Icon(Icons.add),
////        ),
////      ),
//    );
//  }
//}
//
//
//class ListOfSomething extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Вторая активити"),
//      ),
//      body: ListView(
//        children: <Widget>[
//          ListTile(
//            leading: Icon(Icons.bubble_chart, color: Colors.green,),
//            title: Text('Гугл баба'),
//          ),
//          ListTile(
//            leading: Icon(Icons.attach_money, color: Colors.blueAccent),
//            title: Text('Плати бабос'),
//          ),
//          ListTile(
//            leading: Icon(Icons.local_shipping, color: Colors.red),
//            title: Text('Еду к твоей мамке :)'),
//          ),
//        ],
//      ),
//    );
//  }
//}