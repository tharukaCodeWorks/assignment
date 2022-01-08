import 'package:assignment/navigationDrawer.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is home page")));
  }
}
