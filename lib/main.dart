import 'package:assignment/screens/FindTreatments.dart';
import 'package:assignment/screens/MenuList.dart';
import 'package:assignment/screens/Notifications.dart';
import 'package:assignment/screens/questionList.dart';
import 'package:assignment/screens/questionView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ceylon - eAgro"),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome",
              style: TextStyle(fontSize: 25),
            ),
            Image.asset(
              "images/logo.png",
              width: 300,
            ),
            Text(
              "Manage Your Crop",
              style: TextStyle(fontSize: 25),
            ),
            Container(height: 20),
            SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MenuList()))
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  padding: EdgeInsets.all(10.0),
                  textStyle: TextStyle(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 20,
                    ),
                    Text("Click Here", style: TextStyle(color: Colors.black87)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
