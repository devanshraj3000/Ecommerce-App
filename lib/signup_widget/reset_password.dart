import 'package:flutter/material.dart';
import 'package:spacebook/signup_widget/signup_widget.dart';
import 'package:spacebook/login_widget/login_widget.dart';

// ignore: camel_case_types
class Reset_Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Reset_PasswordState();
}

// ignore: camel_case_types
class _Reset_PasswordState extends State<Reset_Password> {
  void onLoginPressed(BuildContext context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginWidget()));

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              Center(
                child: Text(
                  'FORGOT',
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'PASSWORD',
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: Text(
                  'Enter email id:',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: TextField(
                  controller: myController,
                ),
              ),
              Text(myController.text),
              RaisedButton(
                color: Colors.grey[300],
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Email sent!'),
                      );
                    },
                  );
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already  have an account! '),
                    InkWell(
                      child: Text('Log in'),
                      onTap: () => onLoginPressed(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
