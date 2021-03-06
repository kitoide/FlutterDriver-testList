import 'package:flutter/material.dart';
import 'package:flutterdriver_test_list/utils/grid.dart';
import 'package:flutterdriver_test_list/utils/strings.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlutterDriver test',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'FlutterDriver test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: NAMESLIST != null
          ? new GridView.count(
              key: Key("itens"),
              crossAxisCount: 4,
              children: NAMESLIST.map((String value) {
                return Grid(value, NAMESLIST.indexOf(value));
              }).toList())
          : new Text(EMPTY), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
