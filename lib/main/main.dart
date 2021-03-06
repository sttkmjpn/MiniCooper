import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trial_flutter_app/main/main_model.dart';
import 'package:trial_flutter_app/signup/signup_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('New BMW Mini Cooper'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Image.network(
                      'https://ikikuru.com/wordpress/wp-content/uploads/2018/06/1eede648dab7dcedb6e6b97b8ff25cd9.jpg'),
                  Text(
                    model.conceptText,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  RaisedButton(
                    child: Text('Get to Know about MINI'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
