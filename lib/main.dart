import 'package:flutter/material.dart';

import 'SecondScreen.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: textEditingController,
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: textEditingController1,
                    decoration: InputDecoration(hintText: "Number"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: textEditingController2,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: textEditingController3,
                    decoration: InputDecoration(hintText: "Confirmpassword"),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  String Name = textEditingController.text;
                  String Number = textEditingController1.text;
                  String Password = textEditingController2.text;
                  String Confirmpassword = textEditingController3.text;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondScreen(
                                name: Name,
                                number: Number,
                                password: Password,
                                confirmpassword: Confirmpassword,
                              )));
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
