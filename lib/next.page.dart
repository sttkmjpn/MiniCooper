import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: Text('Next Page'),
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
          height: double.infinity,
          width: 400,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Text(name),
           Center(
            child: RaisedButton(
              child: Text('Back'),
              onPressed: (){
              Navigator.pop(context,'STAR WARS');
            },
           ),
          ),
        ],
        ),

   ),
   );
}
}