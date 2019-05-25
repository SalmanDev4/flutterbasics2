import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Basics 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('1'),
                SizedBox(height: 10.0,),
                Text('2'),
                SizedBox(height: 10.0,),
                Text('3'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100.0),
            child: Row(
              children: <Widget>[
                Text('1'),
                SizedBox(width: 10.0,),
                Text('2'),
                SizedBox(width: 10.0,),
                Text('3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
