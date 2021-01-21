
import 'package:flutter/material.dart';
import 'package:trial_flutter_app/next.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'Flutter 練習'),
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
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test APP for Flutter'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Next page',
            ),
          ],
        ),
        body: Container(
            width: double.infinity,
            child:ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child:Image.network('https://carlook.net/data/db_photos/mini/cooper/1st_f/mini_cooper_1st_f_hatchback3d-3297.jpg'),
                         ),
                      Text('New Mini Cooper',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w600,
                          ),
                      ),
                    ],
                   ),
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
        )
    );
  }
}