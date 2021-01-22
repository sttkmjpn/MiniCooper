
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial_flutter_app/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: ChangeNotifierProvider <Mainmodel>(
        create: (_) => Mainmodel(),
        child: Scaffold(
          appBar: AppBar(
           title: Text('New BMW Mini Cooper')
            ,
          ),
          body: Consumer <Mainmodel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [

                    Text(
                      model.conceptText,
                    style: TextStyle(
                      fontSize: 30
                    ),
                    ),
                    RaisedButton(
                      child: Text('Get Started'),
                      onPressed: (){
                          model.changeconceptText();
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}