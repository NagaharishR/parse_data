import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  late final name;
  final number;
  final password;
  final confirmpassword;

  SecondScreen({this.name,this.number,this.password,this.confirmpassword});

  // Key =2039049
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(number),
            Text(password),
            Text(confirmpassword)
          ],
        ),
      ),
    );
  }
}