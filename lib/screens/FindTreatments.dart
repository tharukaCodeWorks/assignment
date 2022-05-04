import 'package:assignment/screens/NewDiseasTakeImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FindTreatments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Find Treatments'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                height: 70,
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewDiseasTakeImage()))
                },
                color: Colors.lightGreenAccent,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.ac_unit),
                    Container(
                      width: 20,
                    ),
                    Text("Detect Disease")
                  ],
                ),
              ),
              Container(height: 20.0),
              new FlatButton(
                height: 70,
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewDiseasTakeImage()))
                },
                color: Colors.lightGreenAccent,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.bug_report),
                    Container(
                      width: 20,
                    ),
                    Text("Detect Incests")
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
