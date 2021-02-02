import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signup_model.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mailEditingController = TextEditingController();
    final passwordEditingController = TextEditingController();
    return ChangeNotifierProvider<SignUpModel>(
      create: (_) => SignUpModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign up'),
        ),
        body: Consumer<SignUpModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: ('example@com')),
                    controller: mailEditingController,
                    onChanged: (text) {
                      model.mail = text;
                    },
                  ),
                  TextField(
                    decoration:
                        InputDecoration(hintText: ('Enter your password')),
                    obscureText: true,
                    controller: passwordEditingController,
                    onChanged: (text) {
                      model.password = text;
                    },
                  ),
                  RaisedButton(
                    child: Text('Resist'),
                    onPressed: () async {
                      await model.signUp();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
