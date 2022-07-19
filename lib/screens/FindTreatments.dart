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
              SizedBox(
                child: new TextButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewDiseasTakeImage()))
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    padding: EdgeInsets.all(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.ac_unit, color: Colors.black87),
                      Container(
                        width: 20,
                      ),
                      Text("Detect Disease",
                          style: TextStyle(color: Colors.black87))
                    ],
                  ),
                ),
                height: 70,
              ),
              Container(height: 20.0),
              SizedBox(
                height: 70,
                child: new TextButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewDiseasTakeImage()))
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    padding: EdgeInsets.all(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.bug_report, color: Colors.black87),
                      Container(
                        width: 20,
                      ),
                      Text("Detect Incests",
                          style: TextStyle(color: Colors.black87))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
